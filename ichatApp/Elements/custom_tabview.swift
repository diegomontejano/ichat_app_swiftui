import SwiftUI

struct CustomTabView: View {
    @EnvironmentObject var appController: AppController
    
    var body: some View {
        VStack {
            Divider()
                .padding(.bottom, 2)
                .foregroundColor(.grayColor2)
            HStack {
                Spacer()
                // profile button
                Button(
                    action: {appController.indexCustomTabView = 0},
                    label: {
                        VStack {
                            Image(systemName: appController.indexCustomTabView == 0 ? "person.crop.circle.fill" : "person.crop.circle")
                                .font(.system(size: 26))
                                .frame(width: 30, height: 22)
                            Text("Profile")
                            Spacer()
                        }
                        .foregroundColor(appController.indexCustomTabView == 0 ? .primaryColor1 : .grayColor4)
                    })
                Spacer()
                // friends button
                Button(
                    action: {appController.indexCustomTabView = 1},
                    label: {
                        VStack {
                            Image(systemName: appController.indexCustomTabView == 1 ? "person.3.fill" : "person.3")
                                .font(.system(size: 26))
                                .frame(width: 30, height: 22)
                            Text("Friends")
                            Spacer()
                        }
                        .foregroundColor(appController.indexCustomTabView == 1 ? .primaryColor1 : .grayColor4)
                    })
                Spacer()
                // chats button
                Button(
                    action: {appController.indexCustomTabView = 2},
                    label: {
                        VStack {
                            Image(systemName: appController.indexCustomTabView == 2 ? "message.fill" : "message")
                                .font(.system(size: 24))
                                .frame(width: 30, height: 22)
                            Text("Chats")
                            Spacer()
                        }
                        .foregroundColor(appController.indexCustomTabView == 2 ? .primaryColor1 : .grayColor4)
                    })
                Spacer()
                // settings button
                Button(
                    action: {appController.indexCustomTabView = 3},
                    label: {
                        VStack {
                            Image(systemName: appController.indexCustomTabView == 3 ? "gearshape.fill" : "gearshape")
                                .font(.system(size: 24))
                                .frame(width: 30, height: 22)
                            Text("Settings")
                            Spacer()
                        }
                        .foregroundColor(appController.indexCustomTabView == 3 ? .primaryColor1 : .grayColor4)
                    })
                Spacer()
            }
        }
        .frame(height: 70)
        .background(Color.white)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            CustomTabView()
                .previewDevice("iPhone 12")
                .environmentObject(AppController())
        }
    }
}
