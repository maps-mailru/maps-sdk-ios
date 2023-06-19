## 1.0.134

### Новое

- Добавлен метод `addSourcesAndLayers`, позволяющий добавить все известные заранее источники и слои одним вызовом.
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
