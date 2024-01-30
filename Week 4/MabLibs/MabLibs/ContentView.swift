//
//  ContentView.swift
//  MabLibs
//
//  Created by Bennett Lee on 1/29/24.
//

import SwiftUI

// Name, city, verb, age
struct ContentView: View {
    @State var name = "John"
    @State var city = "Las Vegas"
    @State var verb = "Gamble"
    @State var age = "21"

    @State var animalSelection = 0
    @State var lessOrMoreSelection = 0
    @State var favoriteNumber = 42.0
    @State var numberOfPets = 0
    @State var isHappyEnding = false

    @State var showStory = false

    var fullStory : String {

        let animals = ["Rat", "Platypus", "Buffalo", "Capybara"]

        var story = "At the age of \(age), \(name) took a trip to \(city) with \(numberOfPets) pets in order to \(verb) with a \(animals[animalSelection]). \(name) decided to buy \(Int(favoriteNumber))."

        if isHappyEnding {
            story += " Now they live happily ever after."
        } else {
            story += " Things did not go too well =("
        }

        return story
    }

    let backgroundColor = Color.white

    var body: some View {
        VStack(spacing: 12.0) {
            Spacer()

            Image("madlibs")
                .resizable()
                .aspectRatio(
                    contentMode: .fit
                )

            VStack (spacing: 12) {
                TextField("Name", text: $name)
                    .padding(8)
                    .background(Color.white)
                    .keyboardType(.asciiCapable)

                TextField("City", text: $city)
                    .padding(8)
                    .background(Color.white)
                    .keyboardType(.asciiCapable)

                TextField("Verb", text: $verb)
                    .padding(8)
                    .background(Color.white)
                    .keyboardType(.asciiCapable)

                TextField("Age", text: $age)
                    .padding(8)
                    .background(Color.white)
                    .keyboardType(.numberPad)

                Picker("Less Or More", selection: $lessOrMoreSelection) {
                    Text("Less").tag(0)
                    Text("More").tag(1)
                }
                .pickerStyle(.segmented)

                VStack {
                    Picker("Animal", selection: $animalSelection) {

                        Text("Rat").tag(0)
                        Text("Platypus").tag(1)
                        Text("Buffalo").tag(2)
                        Text("Capybara").tag(3)
                    }
                    .pickerStyle(.segmented)

                    HStack {
                        Text("\(Int(favoriteNumber))")
                        Slider(value: $favoriteNumber, in: 0...100)
                    }

                    Stepper("Pets \(numberOfPets)", value: $numberOfPets)

                    Toggle("Happy Ending?", isOn: $isHappyEnding)
                }
                .padding()
                .background(
                    Color.white
                )
                .opacity(
                    lessOrMoreSelection == 1 ? 0.0 : 1.0
                )

                Button("Create Story") {
                    showStory = true
                    print(fullStory)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white)
                .contentShape(Rectangle())
            }

            Spacer()
        }
        .padding()
        .background(
            Color(
                red: 255.0 / 255.0,
                green: 204.0 / 255.0,
                blue: 1.0 / 255.0
            )
        )
        .alert("The Story", isPresented: $showStory) {
            Button("Ok") {}
        } message: {
            Text(fullStory)
        }
    }
}

#Preview {
    ContentView()
}
