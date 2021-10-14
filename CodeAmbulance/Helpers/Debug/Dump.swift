import SwiftUI

struct Dump: View {
  init(_ values: Any...) {
    self.values = values
  }
  var values: [Any]
  
  @Environment(\.[key: \Say.self]) private var say
  
  private var message: String {
    values.map(String.init(describing:)).joined(separator: ", ")
  }
  
  var body: some View {
    Text(message)
      .minimumScaleFactor(0.05)
      .onLongPressGesture {
        say(message)
      }
  }
}

struct Dump_Previews: PreviewProvider {
  static var previews: some View {
    Dump(42543525432545423)
      .frame(width: 40, height: 40)
  }
}
