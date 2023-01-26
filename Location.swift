
import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name:"Great Smokey Mountains", country: "United States", description: "A great place to visit", more: "More text here", latitude: 35.536, longitude: -83.4546, heroPicture: "smokies", advisory: "beware of the bears")
}
