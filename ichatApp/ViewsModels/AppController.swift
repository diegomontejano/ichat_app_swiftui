import Foundation
import FirebaseFirestore

class AppController: ObservableObject{
    let db = Firestore.firestore()
    
    // app controllers
    @Published var userModelList = [UserModel]()
    @Published var indexCustomTabView: Int = 0
    @Published var searchFriends: String = ""
    
    
    init(){
        getUserModelListFromFirestore()
    }
    
    func getUserModelListFromFirestore(){
        db.collection("users").getDocuments{snapshot, error in
            if snapshot != nil {
                var _userModelList = [UserModel]()
                
                for doc in snapshot!.documents{
                    var _userModel = UserModel()
                    _userModel.userID = doc["userID"] as? String ?? ""
                    _userModel.name = doc["name"] as? String ?? ""
                    _userModel.email = doc["email"] as? String ?? ""
                    _userModel.photoURL = doc["photoURL"] as? String ?? ""
                    
                    _userModelList.append(_userModel)
                }
                DispatchQueue.main.async {
                    self.userModelList = _userModelList
                }
            }
            if let error = error{
                print(error.localizedDescription)
            }else{
                print("no data was retuned")
            }
        }
    }
}
