//
//  ContentView.swift
//  MVVMDemo
//
//  Created by Bennett Lee on 1/31/24.
//

import SwiftUI
import Combine



// 1. ViewModels are always classes
// 2. ViewModels always conform to ObservableObject
// 3. Properties of ViewModel that will trigger a re-render of the view are marked with @Published
// 4. You create a ViewModel in a view with @StateObject
class CalculatorViewModel : ObservableObject {
    @Published var numberOne = ""
    @Published var numberTwo = ""
    @Published var result = ""

    func add() {
        guard let n1 = Int(numberOne), let n2 = Int(numberTwo) else {
            return
        }

        result = "\(n1 + n2)"
    }
}

struct ContentView: View {
    @StateObject var viewModel = CalculatorViewModel()

    var body: some View {
        VStack (spacing: 12.0) {
            TextField("One", text: $viewModel.numberOne)
                .keyboardType(.numberPad)

            TextField("Two", text: $viewModel.numberTwo)
                .keyboardType(.numberPad)

            Button("Add") {
                viewModel.add()
            }

            if !viewModel.result.isEmpty {
                Text("The Result is \(viewModel.result)")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
