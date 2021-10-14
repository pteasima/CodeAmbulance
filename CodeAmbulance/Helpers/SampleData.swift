import Foundation

extension Date {
  static let samples: (Self, Self) = (
    .init(timeIntervalSinceReferenceDate: 0),
    .init(timeIntervalSinceReferenceDate: 60*60*24*365*21)
  )
  
}
