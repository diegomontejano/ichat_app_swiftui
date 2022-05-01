import SwiftUI

struct MainView: View {
    @EnvironmentObject var appController: AppController
            
    var body: some View {
        switch appController.indexCustomTabView {
        case 1:
            FriendsView()
        case 2:
            ChatsView()
        case 3:
            SettingsView()
        default:
            ProfileView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 12")
            .environmentObject(AppController())
    }
}
