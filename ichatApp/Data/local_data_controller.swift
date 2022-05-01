//import Foundation
//import FirebaseFirestore
//
//class LocalDataController: ObservableObject{
//    let db = Firestore.firestore()
//
//    // app controllers
//    @Published var userModelList = [UserModel]()
//
//    init(){
//        getUserModelListFromLocalJsonFile()
//    }
//
//    func getUserModelListFromLocalJsonFile(){
//        // path to the JSON file in the app folders
//        let filePath = Bundle.main.path(forResource: "local_data", ofType: ".json")
//
//        if filePath != nil{
//            // get jsonURL
//            let jsonURL = URL(fileURLWithPath: filePath!)
//            // make error handling
//            do{
//                // get jsonData from jsonURL
//                let jsonData = try Data(contentsOf: jsonURL)
//                // convert jsonData to UserModel
//                let jsonDecoder = JSONDecoder()
//                // make error handling
//                do{
//                    let userModel = try jsonDecoder.decode([UserModel].self, from: jsonData)
//                    // add userModel to userModelList
//                    self.userModelList = userModel
//                }catch{
//                    print("Error on jsonDecoder: ", error)
//                }
//            }catch{
//                print("Error on jsonData: ", error)
//            }
//        }
//    }
//
//    func initStreamDocumentsFromUsersCollection(){
//        let documentsFromUsersCollection = db.collection("users").addSnapshotListener{(querySnapshot, error) in
//            // check for error
//            if let error = error{
//                print(error.localizedDescription)
//            }else if let querySnapshot = querySnapshot{
//                // get only documents that have a value changed
//                for doc in querySnapshot.documentChanges{
//                    doc.document.data()
//                    print(doc.document.data())
//                }
//            }else{
//                print("no data was retuned")
//            }
//        }
//    }
//
//    func stopStreamDocumentsFromUsersCollection(){
//        //documentsFromUsersCollection.remove()
//    }
//}
