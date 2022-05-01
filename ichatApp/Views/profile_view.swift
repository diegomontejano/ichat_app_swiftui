import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            CustomAppBar(title: "Profile")
            Spacer()
            CustomTabView()
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color.pink)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 12")
            .environmentObject(AppController())
    }
}
