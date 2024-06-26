## 1.1.47
## Изменения

- Добавлена конфигурация `WKWebViewConfiguration.limitsNavigationsToAppBoundDomains = true` в WebView.


## 1.1.46
### Изменения

- Cтиль карты `light` заменён на `simple`.

## 1.1.34-38
### Изменения

- мелкие улучшения и исправления

## 1.0.149
### Изменения

- Исправлены проблемы с удалением и переиспользованием источников данных.

## 1.0.148
### Изменения

- Добавлено свойство `currentLocationTintColor`, позволяющее изменять цвет маркера текущей локации. Если `nil`, то используется цвет по умолчанию.

```swift
mapView.currentLocationTintColor = .purple
```

## 1.0.143-147
### Изменения

- мелкие улучшения и исправления

## 1.0.142
### Изменения

- Добавлено свойство `isCurrentLocationHidden`, позволяющее скрывать маркер текущей локации, когда она определена. По умолчанию `false`.

```swift
mapView.isCurrentLocationHidden = true
```

- Исправлено положение маркера текущей локации в Drive mode.

## 1.0.141
### Изменения

- мелкие улучшения и исправления

## 1.0.140
### Изменения

- Добавлена поддержка градиентов для линий
```swift
let encodedRoute: String = ...
let routeSourceID = "route"

let routeSource = MapDataSource(
    id: routeSourceID,
    type: .encodedString(encodedRoute),
    lineMetrics: true // обязательно включить для градиента
)

let gradient = LineGradient(stops: [
    LineGradientStop(offset: 0, color: "blue"), 
    LineGradientStop(offset: 0.1, color: "royalblue"),
    LineGradientStop(offset: 0.3, color: "cyan"),
    LineGradientStop(offset: 0.5, color: "lime"),
    LineGradientStop(offset: 0.7, color: "yellow"),
    LineGradientStop(offset: 1, color: "red")
]) // значения цвета - hex, либо страндартная палитра CSS

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

## 1.0.138-1.0.139
### Изменения

- мелкие улучшения и исправления

## 1.0.137

### Новое

- Добавлено свойство `isNorthAlwaysUp`, установка которого в `true` запрещает вращать карту, и север будет всегда сверху. По умолчанию `false`.

```swift
mapView.isNorthAlwaysUp = true
```

## 1.0.135

### Новое

- Добавлена возможность управлять отображением линий метро на карте.
```swift
// Включить линии метро
mapView.setLayoutVisible(true, layout: .subway)

// Выключить линии метро
mapView.setLayoutVisible(false, layout: .subway)
```


## 1.0.134

### Новое

- Добавлен метод `addSourcesAndLayers`, позволяющий добавить все известные заранее источники и слои одним вызовом.
```swift
let sourceData = Data(...)

let source = MapDataSource(id: "sourceID", type: .geoJSON(sourceData))

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

let encodedRoute: String = ...
let routeSource = MapDataSource(id: "routeSourceID", type: .encodedString(encodedRoute))

let routeLayer = MapLayer(
    id: "routeLineLayer",
    sourceID: "routeSourceID",
    paint: LinePaintProperties(lineColor: .iuColor(.red), lineWidth: 2)
)

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

## 1.0.128-1.0.133

### Изменения

- мелкие улучшения и исправления

## 1.0.127

### Новое

- Для iOS 16.4+ включена возможность инспекции через Safari Web Inspector

## 1.0.125-1.0.126

### Новое

- Обновлен внешний вид маркера текущей позиции при включенном режиме ведения:

```swift
mapView.isDriveMode = true
```

## 1.0.124

### Новое

- Рисование пунктирных линий. В `LinePaintProperties` добавлено поле `dashes` для возможности задать величину пунктира и разрыва.

```swift
let strokeLayer = MapLayer(
    id: layerID + "stroke",
    sourceID: sourceID,
    paint: LinePaintProperties(
        lineColor: .iuColor(.blue),
        lineWidth: 2,
        lineOpacity: .value(0.5),
        dashes: LineDashes(dash: 5, gap: 2)
    )
```

## 1.0.123

### Изменения

- Изменена логика определения цвета для маркера текущей локации. При большом уровне погрешности маркер окрашивается в серый цвет, при малой погрешности - в синий.

## 1.0.122

### Изменения

- Теперь при большой погрешности текущего положения пользователя (она передается в методе setCurrentLocation) в центре круга погрешности отображается маркер пользователя.

## 1.0.121

### Исправления

- Исправлено отображение маркеров в кластерах.

## 1.0.119

### Новое

- Добавлен метод управления камерой `flyTo`. Подробнее можно почитать [тут](README.md#управление-камерой)

```swift
let options = MapCameraOptions(bearing: 180,
                zoom: 12,
                padding: UIEdgeInsets.init(top: 20, left: 20, bottom: 150, right: 20),
                resetFollowMode: false)
mapView.flyTo(Coordinates(lng: 33, lat: 55), options: options, animated: true)
```

### Изменения

- Методы `setCenter` помечены как устаревшие. Используйте вместо них - `flyTo`.

### Новое

## 1.0.118

### Новое

- Добавлена возможность задавать дополнительные отступы для логотипа.

```swift
mapView.logoInsets = UIEdgeInsets(top: 0, left: 0, bottom: 42, right: 42)
```

## 1.0.117

### Новое

- Добавлена возможность выбирать выравнивание логотипа. По умолчанию логотип отображается в нижнем правом углу карты и учитывает `safeArea`.

```swift
mapView.logoAlignment = .bottomRight
mapView.logoIgnoresSafeArea = false
```

## 1.0.114

### Новое

- В функцию `MapView.setCurrentLocation` теперь можно передать аргумент `zoom`, определяющий уровень зума, который необходимо установить. Изменение всех переданных параметров будет производиться в единой анимации. Подробнее можно почитать [тут](README.md#установка-текущих-параметров-пользователя).
