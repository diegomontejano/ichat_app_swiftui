import SwiftUI

struct FriendsView: View {
    @EnvironmentObject var appController: AppController
    @State var navigationLinkIsActive: Bool = false
    
    var body: some View {
        VStack {
            // app bar
            navigationLinkIsActive ? nil : CustomAppBar(title: "Friends")
            NavigationView {
                ScrollView{
                    VStack {
                        // invite button + search field
                        navigationLinkIsActive ? nil : HStack {
                            CircleImage(image: "person.fill.badge.plus", iconMode: true)
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .padding(.leading, 16)
                                    .font(.system(size: 25))
                                    .foregroundColor(.grayColor4)
                                 
                                TextField("Search", text: $appController.searchFriends)
                                    .font(.system(size: 25))
                                    .foregroundColor(.grayColor4)
                            }
                            .frame(height: 55)
                            .background(Color.grayColor2)
                            .cornerRadius(50)
                            .offset(x: 30)
                        }.padding(EdgeInsets(top: 6, leading: 20, bottom: 6, trailing: 0))
                        
                        // friends list + navigation link
                        ForEach(appController.userModelList, id: \.userID) {userModel in
                            
                            NavigationLink(
                                destination: MessagesView(userModel: userModel),
                                isActive: $navigationLinkIsActive,
                                label: {
                                    navigationLinkIsActive ? nil : HStack {
                                        CircleImage(image: userModel.photoURL)
                                        VStack(alignment: .leading) {
                                            Text(userModel.name)
                                                .font(.system(size: 24))
                                                .fontWeight(.medium)
                                                .foregroundColor(.grayColor6)
                                            Text(userModel.email)
                                                .font(.system(size: 20))
                                                .foregroundColor(.grayColor4)
                                        }
                                        Spacer() // spacer for aligning small names
                                    }
                                }
                            )
                            .padding(.leading, 20)
                        }
                        Spacer()
                    }
                    .navigationTitle("")
                    .navigationBarHidden(true)
                }
            }
            // tab view
            navigationLinkIsActive ? nil : CustomTabView()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
            .previewDevice("iPhone 12")
            .environmentObject(AppController())
    }
}
