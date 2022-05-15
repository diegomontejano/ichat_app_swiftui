import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            CustomAppBar(title: "Settings")
            Spacer()
            CustomTabView()
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color.orange)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewDevice("iPhone 12")
            .environmentObject(AppController())
    }
}
