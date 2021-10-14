import Foundation

/// The user type stored in Firestore
struct User: Codable {
  typealias ID = String
  var id: ID
}

extension User {
  static let samples: (Self, Self) = (
    .init(id: "alice"),
    .init(id: "bob")
  )
}
