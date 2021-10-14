protocol OptionalProtocol {
  associatedtype Wrapped
}
extension Optional: OptionalProtocol { }
