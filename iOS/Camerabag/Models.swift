import Foundation

struct ItemEntry: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var name: String
    var brand: String
    var serial: String
    var shutterCount: String
    var notes: String = ""
    var createdAt: Date = Date()
}
