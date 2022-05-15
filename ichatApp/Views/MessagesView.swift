import SwiftUI

struct MessagesView: View {
    var userModel: UserModel
    var testName: String = "User Name"
    var testEmail: String = "User Email"
    var testPhotoURL: String = ""
    
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                CustomMessagesBar(title: testName, image: testPhotoURL)
                Spacer()
                Text(testName)
                Text(testEmail)
//                Text(userModel.name)
//                Text(userModel.email)
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        let _userModel = UserModel()
        
        MessagesView(userModel: _userModel)
            .previewDevice("iPhone 12")
            .environmentObject(AppController())
    }
}
