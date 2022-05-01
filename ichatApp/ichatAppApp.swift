import SwiftUI
import Firebase

@main
struct ichatAppApp: App {
    
    init(){
        // app firebase initialize
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
            // makes all child views access only one instance at this parent view
            .environmentObject(AppController())
        }
    }
}
