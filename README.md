# MapsSDK
Библиотека карт для iOS

## Подключение

Подключение библиотеки осуществляется через `Swift Package Manager`. В Xcode выберите в меню `File -> Swift Packages -> Add Package Dependency` и введите в поле адреса репозитория `https://github.com/maps-mailru/maps-sdk-ios`.

Выберите `MapsSDK` и добавьте его к цели вашего приложения.

## Использование

Импортируйте `MapsSDK` в файл, где вы будете использовать карту.

```swift

import MapsSDK

...

override func viewDidLoad() {
    let mapConfig = MapViewConfig(
        apiKey: "##YOUR_API_KEY##",
        center: Coordinates(lng: 33, lat: 55),
        zoomLevel: 11,
        style: .main
    )
    let mapView = MapView()
    mapView.delegate = self
    mapView.setup(mapConfig)
    view.addSubview(mapView)
    
    mapView.setCurrentLocation(Coordinates(lng: 33, lat: 55), bearing: 0)
}


```

## SwiftUI

*coming soon*

## Маркеры

При создании маркера нужно указать его идентификатор, координату и картинку.

Для картинки рекомендуется использовать изображение размером 48х48 пикселей.
Картинка отображается на карте так, чтобы середина нижней грани картинки оказалось в заданной координате.
Можно использовать набор из предоставляемых картинок или использовать свою собственную.

```swift
let markerWithPredefinedPinImage = Marker(
    id: "marker_id_1",
    coords: Coordinates(lng: 33, lat: 55),
    pin: .electricPin
)

let pinImage = UIImage(...) 
let markerWithCustomImage = Marker(
    id: "marker_id_2",
    coords: Coordinates(lng: 33.3, lat: 55.5),
    pin: .custom(pinImage)
)
mapView.addMarker(markerWithPredefinedPinImage)
mapView.addMarker(markerWithCustomImage)
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

Для этого необходимо реализовать метод `onMarkerSelect` делегата `MapViewDelegate`.

```swift
extension MyController: MapViewDelegate {
    func onMarkerSelect(id: String) {
        mapView.displayPopup(markerId: id, content: "Hello world")
    }
}
```
