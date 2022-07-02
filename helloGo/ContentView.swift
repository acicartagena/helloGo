// 

import SwiftUI
import Feature
import Core

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green

            VStack {
                HelloWorldView()
                Text(Core.helloUpdated)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
