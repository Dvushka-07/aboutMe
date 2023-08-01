
//  ContentView.swift
//  aboutMe
//  Created by scholar on 27/07/2023.

import SwiftUI
//COMMENT
struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "Hi, I'm Zoya"
    var images = ["catIcon", "catSprite1", "Uni cat"]
    func randCat() -> String {
        var random = Int.random(in: 1..<4)
        var cat = images[random]
        return cat
    }
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
            VStack(spacing: 40.0) {
                      Text(textTitle)
                          .font(.custom(
                                  "AmericanTypewriter",
                                  fixedSize: 30))
                          .fontWeight(.semibold)
                          .foregroundColor(Color.blue)

                      Image("catIcon")
                        .cornerRadius(15)
                          .padding()
                      Button("Surprise Fact") {
                          textTitle = "I love cats!"
                      }.font(.title2)
                          .buttonStyle(.borderedProminent)
                          .tint(.blue)
                Button("Surprise Image") {
                    textTitle = "This doesn't work yet lol"
                    Image(randCat())
                }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                  }.padding()
                .background(Rectangle()
                    .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                .padding()
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
