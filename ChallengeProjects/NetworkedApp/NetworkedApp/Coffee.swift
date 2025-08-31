import Foundation

struct Coffee: Identifiable, Decodable {
    var id: Int
    var title: String
    var description: String
    var ingredients: [String]
    var image: URL
}
