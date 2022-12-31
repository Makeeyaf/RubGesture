import SwiftUI

public extension View {
    func onRubGesture(perform handler: @escaping (_ length: CGFloat) -> Void) -> some View {
        modifier(RubGesture(perform: handler))
    }
}


public struct RubGesture: ViewModifier {
    @GestureState private var length: CGFloat = 0
    @GestureState private var lastPoint: CGPoint?
    @State private var contentFrame: CGRect = .zero

    private let lengthChangeHandler: (CGFloat) -> Void
    
    init(perform handler: @escaping (CGFloat) -> Void) {
        lengthChangeHandler = handler
    }
    
    public func body(content: Content) -> some View {
        content
            .onFrameChange {
                print($0)
                contentFrame = $0
            }
            .gesture(gesture(frame: contentFrame))
            .onChange(of: length, perform: lengthChangeHandler)
    }
    
    private func gesture(frame: CGRect) -> some Gesture {
        DragGesture()
            .updating($length) { currentState, gestureState, _ in
                guard frame.contains(currentState.location), let lastPoint else { return }
                
                gestureState += currentState.location.distance(from: lastPoint)
            }
            .updating($lastPoint) { currentState, gestureState, _ in
                if frame.contains(currentState.location) {
                    gestureState = currentState.location
                } else {
                    gestureState = nil
                }
            }
    }
}
