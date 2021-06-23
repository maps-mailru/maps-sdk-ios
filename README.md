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
    let mapView = MapView()
    mapView.delegate = self
    view.addSubview(mapView)
    
    mapView.setCurrentLocation(Coordinates(lng: 33, lat: 55), bearing: 0)
}


```

## SwiftUI

*coming soon*
