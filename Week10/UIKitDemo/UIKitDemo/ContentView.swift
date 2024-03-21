//
//  ContentView.swift
//  UIKitDemo
//
//  Created by Bennett Lee on 3/20/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack {
            Text(name)
            
            MyTextField(text: $name)
                .frame(height: 50.0)
//                .background(Color.gray)

            TextField("SwiftUI Name", text: $name)
        }
        .padding()
    }
}




struct MyTextField: UIViewRepresentable {

    @Binding var text: String

    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.attributedPlaceholder = NSAttributedString(
            string: "UIKit Name",
            attributes: [
                .foregroundColor: UIColor.red
            ]
        )
        textField.delegate = context.coordinator

        return textField
    }

    // Updating data from SwiftUI > UIKit
    func updateUIView(_ textField: UITextField, context: Context) {
        textField.text = text
    }

    // Getting data from SwiftUI to UIKit
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    // Updating data From UIKit > SwiftUI
    class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            self._text = text
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }

    }


}


#Preview {
    ContentView()
}
