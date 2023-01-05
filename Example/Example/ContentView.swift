import SwiftUI
import RubGesture

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Eraser") {
                    EraserView()
                }
                NavigationLink("Moon Phase") {
                    MoonPhaseView()
                }
            }
            .navigationTitle("Examples")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
