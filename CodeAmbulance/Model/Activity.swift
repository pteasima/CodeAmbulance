import Foundation

enum Activity: Codable, Hashable {
  case post(Post)
}

extension Activity {
  static var samples: (Self, Self) = (
    .post(.samples.0),
    .post(.samples.1)
  )
}
