import Foundation

struct ChatModel: Decodable{
    var time: String
    var lastMessage: String
    var loggedUserID: String
    var selectedUserID: String
    var selectedUserName: String
    var selectedUserEmail: String
    var selectedUserPhotoURL: String
}
