# RubGesture
Gesture that recognize rubbing motion in SwiftUI. Unlike `DragGesture`, `RubGesture` only recognizes drag events inside the view frame and ignores events outside the frame.

![example](https://user-images.githubusercontent.com/11623298/210137667-772206b2-b05f-4813-a5f8-acb594d635bb.gif)

## Usage
```swift
import RubGesture

.onRubGesture { length in
    // Do something
}
```

## Requirement 
- iOS 14.0+
- macOS 11.0+ 

## Installation

### Swift Package Manager
1. File > Swift Packages > Add Package Dependency
1. Add https://github.com/Makeeyaf/RubGesture.git
