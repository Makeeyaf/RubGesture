# RubGesture

Gesture that recognize rubbing motion in SwiftUI. Unlike `DragGesture`, `RubGesture` only recognizes drag events inside the view frame and ignores events outside the frame.

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
1. Add https://github.com/Makeeayf/RubGesture.git
