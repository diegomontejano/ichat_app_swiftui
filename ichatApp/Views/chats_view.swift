import SwiftUI

struct ChatsView: View {
    var body: some View {
        VStack {
            CustomAppBar(title: "Chats")
            Spacer()
            CustomTabView()
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color.green)
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
            .previewDevice("iPhone 12")
            .environmentObject(AppController())
    }
}
