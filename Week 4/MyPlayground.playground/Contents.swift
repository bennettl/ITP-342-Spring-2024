import Foundation

func greet(firstName: String?, lastName: String?){
    
    // Early return
    guard let firstName, let lastName else {
        return
    }

    print("Hello \(firstName) \(lastName)")



    // Pyramid of doom - anti - pattern
    // if
        // for
            // for
                // if
                    // switch
                        // ??

}

greet(firstName: "Bennett", lastName: "Lee")

