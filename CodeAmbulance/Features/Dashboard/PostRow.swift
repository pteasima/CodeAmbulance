import SwiftUI

struct PostRow: View {
  var post: Post
  var body: some View {
    VStack {
      Dump(post.creator, post.createdAt)
      Text(post.content)
        .font(.body)
    }
  }
}

struct PostRow_Previews: PreviewProvider {
  static var previews: some View {
    PostRow(post: .samples.1)
  }
}
