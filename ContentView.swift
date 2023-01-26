

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
            
            Text(location.name)
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .shadow(radius:3)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding()
                
            
            
            Text("Did You Know?")
                .font(.title3)
                .bold()
                .padding()
    
            Text(location.more)
                .padding()
        
        }
        .navigationTitle("Discover")
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
            .previewInterfaceOrientation(.portrait)
    }
}
}

