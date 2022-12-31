import SwiftUI
import RubGesture

struct ContentView: View {
    @State var moonPhaseIndex: Int = 1
    
    let moonPhases: [String] = [
        "moonphase.new.moon",
        "moonphase.waxing.crescent",
        "moonphase.first.quarter",
        "moonphase.waxing.gibbous",
        "moonphase.full.moon",
        "moonphase.waning.gibbous",
        "moonphase.last.quarter",
        "moonphase.waning.crescent",
    ]
    
    var moonPhase: String {
        moonPhases[moonPhaseIndex]
    }
    
    var body: some View {
        VStack {
            Image(systemName: moonPhase)
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .padding(60)
                .onRubGesture { length in
                    let index = Int(1 + (length / 200)) % (moonPhases.count)
                    if index != moonPhaseIndex {
                        moonPhaseIndex = index
                    }
                }
            Text("Rub me tender\nRub me sweat")
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
