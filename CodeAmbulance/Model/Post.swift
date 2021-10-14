import Foundation

/// Represents a post created by a User, currently mostly used to ask question that others can later respond to.
struct Post: Codable, Hashable {
  var createdAt: Date
  var creator: User.ID
  var content: String
}

extension Post {
  static let samples: (Self, Self) = (
    .init(createdAt: .samples.0, creator: User.samples.0.id, content: "Hello world"),
    .init(createdAt: .samples.1, creator: User.samples.1.id, content: "Hello **sima**, can u help make me Swift once?")
  )
}
