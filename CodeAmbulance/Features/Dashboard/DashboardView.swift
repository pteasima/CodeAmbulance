import SwiftUI

struct DashboardView: View {
  @State var activities: [Activity] = [.samples.0, .samples.1]
//  var myActivities: [Activity] {
//    activities.filter { }
//  }
  enum Tab: Hashable, Identifiable, CaseIterable {
    case all
    case mine
    var id: Self { self }
  }
  @State var selectedTab: Tab = .all
  var body: some View {
    NavigationView {
      VStack {
        tabPicker
        List {
          ForEach(activities, id: \.self) { activity in
            switch activity {
            case .post(let post):
              PostRow(post: post) 
            }
          }
        }
      }
      Text("Select an activity")
    }
  }
  
  private var tabPicker: some View {
    Picker(selection: $selectedTab, label: EmptyView()) {
      ForEach(Tab.allCases) {
        Text(String(describing: $0))
      }
    }
    .pickerStyle(SegmentedPickerStyle())
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    DashboardView()
  }
}
