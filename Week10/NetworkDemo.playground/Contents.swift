import UIKit


// Synchronous
let x = 5
let y = 10
print(x + y)

// Asynchronous

// Defining a function that makes a call to Unsplash API to get an image
func fetchImage(id: String, onComplete: @escaping (Data?, Error?) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
        let data = Data()
        onComplete(data, nil)
    })
}

func fetchImage(id: String) async throws -> Data {
    return Data()
}

print("1")
fetchImage(id: "1", onComplete: { data, error in
    print("3")
    if let error {
        print("there was an error")
    }

    if let data {
        print("use the data")
    }
})
print("2")


do {
    // 1 print("1")
    let data = try await fetchImage(id: "2") // 2
    // 2 print("3")
} catch {
    print(error)
}




