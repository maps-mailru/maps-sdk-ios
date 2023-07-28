# MapsSDK для iOS

**MapsSDK** - библиотека, позволяющая использовать картографические данные и геосервисы VK в ваших iOS-приложениях.

> Для использования MapsSDK вам необходим API-ключ. Подробнее о том, как его получить вы можете прочитать [по этой ссылке](https://platform.vk.com/docs/vkmaps/general-information/api-key)

## Введение

С помощью MapsSDK вы можете добавить в собственное приложение карты на основе геоданных VK. MapsSDK максимально упрощает процесс интеграции и отображения карт и берет на себя обработку жестов пользователя. Так же у вас есть возможность добавить на карту произвольные маркеры, полилинии и другие графические элементы, которые позволят пользователю получить дополнительную информацию и успешно взаимодействовать с картой.

## Подключение

Для подключения MapsSDK вы можете использовать Swift Package Manager.

### Установка с помощью Swift Package Manager

MapsSDK доступен в виде пакета для Swift Package Manager (SPM). SPM - это менеджер зависимостей, он интегрирован в систему сборки Swift и автоматизирует процесс загрузки, компиляции и линковки зависимостей.

Для установки пакета выполните следующие действия:

1. Откройте проект в Xcode.
2. Нажмите `File -> Add Packages`.

> Так же вы можете выбрать файл проекта на панели `Project Navigator`, перейти к настройкам проекта, далее выбрать вкладку `Package Dependencies` и нажать кнопку `Add Package Dependency`.

3. В появившемся окне введите адрес репозитория - `https://github.com/maps-mailru/maps-sdk-ios`.


## Интеграция карт в приложение

Импортируйте `MapsSDK` в файл, в котором вы будете использовать карту.

```swift
import MapsSDK
```

Для начала работы с картой необходимо:

1. Создать объект типа `MapView`.
2. Сконфигурировать карту.
3. Указать делегат карты.

### Создание объекта `MapView`

```swift
let mapView = MapView()
```

### Конфигурация объекта `MapView`

Для конфигурации необходимо создать объект типа `MapViewConfig`, содержащий следующие сведения:

* [`API-ключ`](https://platform.vk.com/docs/vkmaps/general-information/api-key) для работы с SDK;
* координаты центра карты;
* начальный уровень `zoom`;
* стиль тайлов.

#### Пример настройки и установки конфигурации
```swift
let mapConfig = MapViewConfig(
    apiKey: "##API_KEY##",
    center: Coordinates(lng: 33, lat: 55),
    zoomLevel: 11,
    style: .automatic
)
mapView.setup(mapConfig)

```

Уровень зума (`zoomLevel`) может иметь значение от 0 (самый отдаленный) до 22 (самый приближенный).
Стиль тайлов (`style`) может принять одно из следующих значений:

* `.automatic` - автоматический выбор стиля в зависимости от `isDriveMode` и текущей цветовой схемы устройства;
* `.main` - базовый стиль;
* `.light` - светлый стиль;
* `.dark` - темный стиль;
* `.navMain` - базовый стиль для навигации с акцентом на дороги;
* `.navDark` - темный стиль для навигации с акцентом на дороги.


### Указание делегата карты

Делегат должен реализовывать требования протокола `MapViewDelegate`. Он будет использоваться для обработки оповещений от карты о различных событиях, таких как:

* Карта была загружена;
* было получено событие, иницированное пользователем (например касание);
* было получено событие, инициированное элементами управления картой

и другие.


### Пример интеграции карты в приложение
```swift
import MapsSDK

...

override func viewDidLoad() {
    let mapView = MapView()
    
    let mapConfig = MapViewConfig(
        apiKey: "##API_KEY##",
        center: Coordinates(lng: 33, lat: 55),
        zoomLevel: 11,
        style: .automatic
    )

    mapView.setup(mapConfig)
    mapView.delegate = self
    view.addSubview(mapView)
}
```

## Использование и управление картой

### Установка текущих параметров пользователя

Метод `setCurrentLocation` устанавливает:

* Текущие координаты пользователя;
* направление, в котором смотрит или движется пользователь (`bearing`);
* точность позиции пользователя в метрах (`accuracy`);
* уровень зума (`zoom`). Данный аргумент является опциональным.


#### Установка текущей координаты и направления пользователя
```swift
// без установки зума
mapView.setCurrentLocation(Coordinates(lng: 33, lat: 55), bearing: 0, accuracy: 0)
// с установкой зума
mapView.setCurrentLocation(Coordinates(lng: 33, lat: 55), bearing: 0, accuracy: 0, zoom: 10)
```
Уровень зума (`zoom`) может изменяться в диапазоне от 0 (самый отдаленный) до 22 (самый приближенный).

### Управление камерой
Для управления камерой используется метод `flyTo`, а так же `setBearing` и `setZoom`.

#### Метод `flyTo`


Позволяет изменить координаты центра карты. За анимацию изменений отвечает аргумент `animated`, а за длительность - `duration`.

```swift
// без указания длительности анимации
mapView.flyTo(Coordinates(lng: 33, lat: 55), animated: true)
// с указание длительности анимации
mapView.flyTo(Coordinates(lng: 33, lat: 55), animated: true, duration: 2)
```

Дополнительно вы можете передать аргумент `options` типа `MapCameraOptions`, определяющий:

* Азимут (`bearing`) - угол поворота карты;
* зум (`zoom`) - уровень зума карты;
* отступы (`padding`) - отступы с каждой стороны окна для смещения центральной точки вьюпорта;
* кривую движения камеры (`curve`) - коэфициент для определения траектории движения камеры;
* флаг сброса режима следования (`resetFollowMode`) - см. раздел "Установка режимов следования".


Каждый из перечисленных параметров является опциональным.

#### Пример метода `flyTo` с дополнительными опциями `MapCameraOptions`
```swift
let options = MapCameraOptions(bearing: 180,
                zoom: 12,
                padding: UIEdgeInsets.init(top: 20, left: 20, bottom: 150, right: 20),
                curve: 1.42,
                resetFollowMode: false)
mapView.flyTo(Coordinates(lng: 33, lat: 55), options: options, animated: true)
```

#### Установка направления карты
Метод `setBearing` устанавливает направление карты, является облегченной версией метода `flyTo`.
```swift
mapView.setBearing(90, animated: true)
```

#### Фиксация севера карты сверху

Свойство `isNorthAlwaysUp` запрещает вращать карту любым способом, если установлдено в `true`. Север будет всегда сверху карты. По умолчанию `false`.

```swift
mapView.isNorthAlwaysUp = true
```

#### Скрытие маркера текущей локации

Cвойство `isCurrentLocationHidden` позволяет скрывать маркер текущей локации, когда она определена. По умолчанию `false`.

```swift
mapView.isCurrentLocationHidden = true
```

#### Изменение цвета маркера текущей локации

- Cвойство `currentLocationTintColor` позволяет изменять цвет маркера текущей локации. Если `nil`, то используется цвет по умолчанию.

```swift
mapView.currentLocationTintColor = .purple
```

#### Установка уровня зума
Метод `setZoom` устанавливает зум карты, является облегченной версией метода `flyTo`.

```swift
mapView.setZoom(11, animated: true)
```

#### Установка режимов следования (`followLocation`, `followBearingAndLocation`, `free`)
```swift
mapView.mode = .followLocation
```

#### Вписывание области во вьюпорт
```swift
mapView.fitBounds(northWest: coords1, southEast: coords2, animated: true)
```

### Дополнительные возможности карты

#### Установка минимального и максимального уровня зума

```swift
mapView.setMinZoom(10, maxZoom: 15)
```

#### Включение и выключение элементов управления
```swift
mapView.isZoomButtonsHidden = true
mapView.isCompassHidden = true
mapView.isMyLocationButtonHidden = true
```

#### Включение и выключение жестов
```swift
mapView.isDragPanEnabled = true
mapView.isZoomRotateEnabled = true
```



#### Выравнивание логотипа
```swift
mapView.logoAlignment = .bottomRight
mapView.logoIgnoresSafeArea = false
mapView.logoInsets = .zero
```
По умолчанию логотип отображается в нижнем правом углу карты и учитывает `safeArea`.

## Маркеры

Для создания маркеров используется структура `Marker`. В инициализатор передаются уникальный идентификатор маркера, координату и картинку, а также, опционально, выравнивание.

Для картинки рекомендуется использовать изображение размером 48х48 пикселей. Можно использовать набор из предоставляемых картинок или использовать свою собственную.

#### Добавление отдельных маркеров
```swift
let marker1 = Marker(id: "marker_id_1", 
                    coords: Coordinates(lng: 33, lat: 55), 
                    pin: .electricPin)
                    
let marker2 = Marker(id: "marker_id_2", 
                     coords: Coordinates(lng: 33, lat: 55),
                     pin: .electricInfo, 
                     alignment: .bottomLeft)
```
В данном случае передаются картинки из предустановленного в SDK набора изображений. При необходимости вы можете передать собственную.
```swift
let markerImage = UIImage(...)
let marker3 = Marker(id: "marker_id_3", 
                     coords: Coordinates(lng: 33, lat: 55),
                     pin: .custom(markerImage), 
                     alignment: .center)
```

По умолчанию выравнивание маркера имеет значение `.center`, то есть центр маркера совмещается с переданными координатами. У вас есть возможность гибко управлять этим параметром, выбирая одно из множества доступных значений, или передать произвольное смещение.

```swift
// Выравнивание по центру нижней грани
let marker4 = Marker(id: "marker_id_4", 
                     coords: Coordinates(lng: 33, lat: 55),
                     pin: .electricPhoto, 
                     alignment: .bottom)
                     
// Выравнивание со смещением
// Смещение высчитывается относительно центра маркера
let marker5 = Marker(id: "marker_id_5", 
                     coords: Coordinates(lng: 33, lat: 55),
                     pin: .electricStar, 
                     alignment: .center(offsetByX: 10, byY: -10))
```


Для размещения маркера на карте используется метод `addMarker(_: Marker)`.

#### Добавление маркеров по одному
```swift
mapView.addMarker(marker1)
mapView.addMarker(marker2)
```

#### Добавление маркеров массивом
```swift
mapView.addMarkers([marker1, marker2])
```

#### Удаление отдельного маркера с указанием его идентификатора
```swift
mapView.removeMarker(id: "marker_id_1")
```

#### Удаление всех маркеров
```swift
mapView.removeAllMarkers()
```

#### Отслеживание события нажатия на маркер

```swift
func MapDelegate: MapViewDelegate{
    func mapView(_ map: MapView, didSelectMarkerID markerID: String) {
        // ...
        // markerID - ID выбранного маркера
        // ...
    }
}
```
Дополнительно при нажатии на любой маркер вызывается метод `MapViewDelegate.mapView(_: MapView, didReceiveEvent: MapEvent)` делегата. В данном случае свойство `didReceiveEvent.type` имеет значение `.clickOnMarker`.

```swift
func MapDelegate: MapViewDelegate{
    func mapView(_ map: MapView, didReceiveEvent event: String) {
        // ...
        // Для события нажатия на маркер
        // event.type = .clickOnMarker
        // ...
    }
}
```


## Кластеризация

Маркеры можно объединять в кластеры. Кластеризация создает новый источник данных на карте. Вы можете указать радиус кластеров в метрах, цвет текста и фона.
```swift
func mapViewDidLoad(_ mapView: MapView) {
    let markers: [Marker] = ...
    mapView.addCluster(markers, id: "clusterId", radius: 50, textColor: .white, backgroundColor: .blue)
}
```

Удаление кластеров происходит с указанием идентификатора кластера.
```swift
mapView.removeCluster(id: "clusterId")
```


## Попапы

Для показа попапа на карте, нужно указать идентификатор маркера, для которого он будет отображен, и текст внутри попапа.

```swift
mapView.displayPopup(markerId: "marker_id_1", content: "Hello world")
```

Для скрытия попапа, нужно указать идентификатор маркера.

```swift
mapView.hidePopup(markerId: "marker_id_1")
```

Для показа попапа после выбора маркера на карте необходимо реализовать метод `mapView(_:, didSelectMarkerID:)` делегата `MapViewDelegate`.

```swift
extension MyController: MapViewDelegate {
    func mapView(_ mapView: MapView, didSelectMarkerID id: String) {
        mapView.displayPopup(id: id, content: "Hello world")
    }
}
```

## Стили

Карта поддерживает смену стилей. Стиль `.automatic` означает, что карта будет автоматически менять светлый и темный стили в зависимости от настройки системной темы интерфейса.
```swift
mapView.changeStyle(.automatic)
mapView.changeStyle(.dark)
```

## GeoJSON

Карта поддерживает отрисовку полигонов и линий из GeoJSON источника.

#### Добавление источника данных и отрисовка слоёв
```swift
let sourceData = Data(...)

let source = MapDataSource(id: "sourceID", type: .geoJSON(sourceData))
mapView.addSource(source)

let fillLayer = MapLayer(
    id: "fillLayer",
    sourceID: "sourceID",
    paint: FillPaintProperties(fillColor: .iuColor(.green), fillOpacity: .value(0.3))
)

let strokeLayer = MapLayer(
    id: "strokeLayer",
    sourceID: "sourceID",
    paint: LinePaintProperties()
)

mapView.addLayer(fillLayer)
mapView.addLayer(strokeLayer)
```

Значение цвета и прозрачности можно задать в самом источнике. В таком случае используйте `.source("field")`, где `field` — имя поля в `properties` источника, из которого нужно брать значение.

Удалить источники и слои можно с указанием их идентификаторов.

```swift
mapView.removeLayer("fillLayer")
mapView.removeLayer("strokeLayer")
mapView.removeSource("sourceID")
```

Поддерживается отрисовка маршрутов в формате кодированной строки из сервиса [Построение маршрута](https://platform.vk.com/docs/vkmaps/routing/directions).

```swift
let routeSource = MapDataSource(id: "routeSourceID", type: .encodedString(encodedRoute))
mapView.addSource(routeSource)

let routeLayer = MapLayer(
    id: "routeLineLayer",
    sourceID: "routeSourceID",
    paint: LinePaintProperties(lineColor: .iuColor(.red), lineWidth: 2)
)

mapView.addLayer(routeLayer)
```

Поддерживается отрисовка линий с градиентным переходом цветов на ней. Для этого неоходимо включить опцию `lineMetrics` у `MapDataSource`, создать объект `LineGradient`, указав список `offset` по длине линии в диапазоне 0.0 ... 1.0 и `color` hex строкой или страндартное имя цвета CSS.

```swift
let encodedRoute: String = ...
let routeSourceID = "route"

let routeSource = MapDataSource(
    id: routeSourceID,
    type: .encodedString(encodedRoute),
    lineMetrics: true
)

let gradient = LineGradient(stops: [
    LineGradientStop(offset: 0, color: "#0000FF"), 
    LineGradientStop(offset: 0.1, color: "royalblue"),
    LineGradientStop(offset: 0.3, color: "cyan"),
    LineGradientStop(offset: 0.5, color: "lime"),
    LineGradientStop(offset: 0.7, color: "yellow"),
    LineGradientStop(offset: 1, color: "#FF0000")
])

let routeLayer = MapLayer(
    id: "routeLineLayer",
    sourceID: routeSourceID,
    paint: LinePaintProperties(
        lineColor: .iuColor(.green),
        lineWidth: 6,
        lineGradient: gradient
    )
)

mapView.addSourcesAndLayers(
    sources: [ routeSource ],
    layers: [ routeLayer ]
)
```

Поддерживается отрисовка кругов. Поскольку GeoJSON не поддерживает круги, они симулируются полигоном с заданным количеством сторон.

```swift
mapView.addCircleSource(center: coords, radius: 500, steps: 32, id: sourceID)
```
Если источники(sources) и слои(layers) известны заранее, то вы можете добавить их единым вызовом.
```swift
mapView.addSourcesAndLayers(
    sources: [
        source,
        routeSource
    ],
    layers: [
        fillLayer,
        strokeLayer,
        routeLayer
    ]
)
```

## Пробки и изолинии

Карта может показывать пробки на дорогах, линии метро и уровни высот (изолинии). Для включения воспользуйтесь методом `setLayoutVisible`.

```swift
mapView.setLayoutVisible(true, layout: .traffic)
mapView.setLayoutVisible(true, layout: .isolines)
mapView.setLayoutVisible(true, layout: .isolinesLabel)
mapView.setLayoutVisible(true, layout: .subway)
```

## Обработка ошибок

Для обработки ошибок используется метод `mapView(_:, didFailWithError:)` делегата `MapViewDelegate`.
```swift
extension MyController: MapViewDelegate {
    func mapView(_ mapView: MapView, didFailWithError error: Error) {
        print("Did fail with error: \(error.localizedDescription)")
    }
}
```

## Геокодирование

`Geocoder` — компонент `MapsSDK` для прямого и обратного геокодирования. Для инициализации необходим [`API_KEY`](https://platform.vk.com/docs/vkmaps/general-information/api-key).

#### Пример прямого геокодирования
```swift
let geocoder = Geocoder(apiKey: "your apiKey")

geocoder.geocode(
    query: "Ленинградский проспект 39с79",
    lang: "ru",
    location: Coordinates(lng: 37.537892, lat: 55.796926)
) { result in
    switch result {
    case let .success(response):
        print(response)
    case let .failure(error):
        print(error.localizedDescription)
    }
}
```

## SwiftUI

Для использования карты в `SwiftUI` предусмотрен компонент `Map`.

#### Пример использования в SwiftUI
```swift
import SwiftUI
import MapsSDK

class StateObject: ObservableObject {
    let mapConfig  = MapViewConfig(
        apiKey: apiKey,
        center: Coordinates(lng: 37.537892, lat: 55.796926)
        zoomLevel: 15,
        style: .automatic
    )

    let mapView = MapView()
}

extension StateObject: MapViewDelegate {
    // методы делегата
}

struct ContentView: View {
    @StateObject private var state = StateObject()

    var body: some View {
        Map(
            config: state.mapConfig,
            view: state.mapView,
            delegate: state
        )
    }
}
```
## Ограничения

`MapsSDK` может быть интегрирован в приложения с поддержкой iOS 12.4 и более поздних версий.

Начиная с iPadOS 13 у пользователей появилась возможность использовать многооконный режим. `MapsSDK` не был оптимизирован для работы в этом режиме.

Вы можете с легкостью интегрировать MapsSDK в приложения, основанные на фреймворках UIKit или SwiftUI. 
