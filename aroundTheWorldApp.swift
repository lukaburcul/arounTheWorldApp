
import SwiftUI

@main
struct aorundTheWorld: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
             TabView{
                    
                
                NavigationView{
                    ContentView(location: locations.primary)
                    }
                    .tabItem{
                        Image(systemName: "airplane.departure" )
                        Text("Discover")
                    }
                    
                NavigationView{
                        WorldView()
                    }
                    .tabItem{
                        Image(systemName: "star.fill")
                        Text("Locations")
                    }
                
             }
             .environmentObject(locations)
        }
    }
}

struct Previews_aroundTheWorld_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
