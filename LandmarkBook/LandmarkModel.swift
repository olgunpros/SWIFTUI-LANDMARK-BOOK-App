
import SwiftUI
import CoreLocation


struct Landmark : Identifiable {
    var id : Int
    var name : String
    var imageName: String
    var country: String
    var category : String
    var cordinates: Coordinates
    var locationcordibate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: cordinates.latitude, longitude: cordinates.longitude)
    }
    
}
struct Coordinates {
    var latitude : Double
    var longitude: Double
    
}
let EifelLandmark  = Landmark (id: 0, name: "Eifel", imageName: "eiffel", country: "France", category: "Tower", cordinates: Coordinates(latitude: 48.8583701, longitude: 2.2919064))
let ColloseumLandmark  = Landmark (id: 1, name: "Colloseum", imageName: "collesium", country: "İtaly", category: "Historic Area", cordinates: Coordinates(latitude: 41.8902101, longitude: 12.48736))

let LondonLandmark  = Landmark (id: 2, name: "London Bridge", imageName: "bridge", country: "UK", category: "Bridge", cordinates: Coordinates(latitude: 51.5079111, longitude: -0.0903026))
let PissaLandmark  = Landmark (id: 4, name: "Pissa Tower", imageName: "pizza", country: "İtaly", category: "Tower", cordinates: Coordinates(latitude: 43.722952, longitude: 10.3940221))
let SydNeyLandmark  = Landmark (id: 5, name: "Sydney", imageName: "sydney", country: "Australia", category: "Opera House", cordinates: Coordinates(latitude: -33.8478053, longitude: 150.6023364))
let landmarkArray = [EifelLandmark,ColloseumLandmark,LondonLandmark,PissaLandmark,SydNeyLandmark]
