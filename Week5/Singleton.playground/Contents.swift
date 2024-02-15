import UIKit





// UserService 

class ApiService {

}

class UserViewModel {
    // Singleton -> Current User
    static var current: User? = nil

    var apiService : ApiService

    func login() {
        // call's APIService
        UserViewModel.current = User(name: "Bennett")
    }
}

class User {
    let name: String
}


UserViewModel.current

let john = User(name: "John")
let bob = User(name: "Bob")

UIApplication.shared
UIDevice.current
FileManager.default


func makeNetworkRequest() -> String{

}

