
import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations : Locations
    @State var region = MKCoordinateRegion( center: CLLocationCoordinate2D(latitude: 45.815399, longitude: 15.966568),
                                            span: MKCoordinateSpan(latitudeDelta: 15 , longitudeDelta: 15))
    
    var body: some View {
       Map(coordinateRegion: $region,
           annotationItems: locations.places){
            location in
           MapAnnotation(coordinate: CLLocationCoordinate2D( latitude: location.latitude, longitude: location.longitude)){
               
               NavigationLink(destination: ContentView(location: location)){
               
               Image(location.country)
                   .resizable()
                   .cornerRadius(10)
                   .frame(width: 80, height: 40)
                   .shadow(radius: 3)
           }
           }
       }
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
