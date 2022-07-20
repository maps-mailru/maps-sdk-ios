# MapsSDK
Библиотека карт для iOS

## Подключение

Подключение библиотеки осуществляется через `Swift Package Manager`. В Xcode выберите в меню `File -> Swift Packages -> Add Package Dependency` и введите в поле адреса репозитория `https://github.com/maps-mailru/maps-sdk-ios`.

Выберите `MapsSDK` и добавьте его к цели вашего приложения.

## Использование

Импортируйте `MapsSDK` в файл, где вы будете использовать карту.

Для начала работы с картой необходимо указать:
* API key для работы с SDK
* координаты центра карты
* начальный уровень zoom-а
* стиль тайлов

```swift

import MapsSDK

...

override func viewDidLoad() {
    let mapConfig = MapViewConfig(
        apiKey: "##YOUR_API_KEY##",
        center: Coordinates(lng: 33, lat: 55),
        zoomLevel: 11,
        style: .automatic
    )
    let mapView = MapView()
    mapView.delegate = self
    mapView.setup(mapConfig)
    view.addSubview(mapView)
    
    mapView.setCurrentLocation(Coordinates(lng: 33, lat: 55), bearing: 0, accuracy: 0)
}


```

## Управление картой


Установка текущей координаты и направления пользователя

```swift
mapView.setCurrentLocation(Coordinates(lng: 33, lat: 55), bearing: 0, accuracy: 0)
```

Установка направления карты

```swift
mapView.setBearing(90, animated: true)
```

Установка координат центра карты (без зума и с зумом)

```swift
mapView.setCenter(Coordinates(lng: 33, lat: 55), animated: true)
mapView.setCenter(Coordinates(lng: 33, lat: 55), zoom: 10, animated: true)
```

Установка уровня зума

```swift
mapView.setZoom(11, animated: true)
```

Установка минимального и максимального уровня зума

```swift
mapView.setMinZoom(10, maxZoom: 15)
```

Включение/выключение элементов управления

```swift
mapView.isZoomButtonsHidden = true
mapView.isCompassHidden = true
mapView.isMyLocationButtonHidden = true
```

Включение/выключение жестов

```swift
mapView.isDragPanEnabled = true
mapView.isZoomRotateEnabled = true
```

Установка режимов следования (followLocation, followBearingAndLocation, free)

```swift
mapView.mode = .followLocation
```

Вписать область во вьюпорт

```swift
mapView.fitBounds(northWest: coords1, southEast: coords2, animated: true)
```


## Маркеры

При создании маркера нужно указать его идентификатор, координату и картинку.

Для картинки рекомендуется использовать изображение размером 48х48 пикселей.
Картинка отображается на карте так, чтобы середина нижней грани картинки оказалось в заданной координате.
Можно использовать набор из предоставляемых картинок или использовать свою собственную.

```swift
let pinImage = UIImage(...) 
let marker1 = Marker(id: "marker_id_1", coords: Coordinates(lng: 33, lat: 55), pin: .electricPin)
mapView.addMarker(marker1)
let marker2 = Marker(id: "marker_id_2", coords: Coordinates(lng: 33, lat: 55), pin: .custom(pinImage))
mapView.addMarker(marker2)
```

Маркеры можно добавить массивом.

```swift
mapView.addMarkers([marker1, marker2])
```

Удалить маркер нужно с указанием его идентификатора.

```swift
mapView.removeMarker(id: "marker_id_1")
```

Или удалить все маркеры сразу.

```swift
mapView.removeAllMarkers()
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

## Показ попапа после выбора маркера на карте

Для этого необходимо реализовать метод `mapView(_:, didSelectMarkerID:)` делегата `MapViewDelegate`.

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

*Значение цвета и прозрачности можно задать в самом источнике. В таком случае используйте .source("field"), где "field" - имя поля в properties источника, откуда брать значение.*

Удалить источники и слои можно с указанием их идентификаторов.

```swift
mapView.removeLayer("fillLayer")
mapView.removeLayer("strokeLayer")
mapView.removeSource("sourceID")
```

Поддерживается отрисовка маршрутов в формате кодированной строки сервиса построения маршрутов.

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

Поддерживается отрисовка кругов. Поскольку GeoJSON не поддерживает круги, они симулируются полигоном с заданным количеством сторон.

```swift
mapView.addCircleSource(center: coords, radius: 500, steps: 32, id: sourceID)
```


## Кластеризация

Маркеры можно объединять в кластеры. Кластеризация создает новый источник данных на карте, поэтому использовать ее нужно только после загрузки карты. Вы можете указать радиус кластеров в метрах, цвет текста и фона.

```swift
let markers: [Marker] = ...
mapView.addCluster(markers, id: "clusterId", radius: 50, textColor: .white, backgroundColor: .blue)
```

Удаление кластеров происходит с указанием идентификатора кластера.

```swift
mapView.removeCluster(id: "clusterId")
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

## Geocoder

Geocoder - компонент MapsSDK для прямого и обратного геокодирования. Для инициализации необходим API key.

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

```

## SwiftUI

Для использования карты в SwiftUI есть компонент `Map`.

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
