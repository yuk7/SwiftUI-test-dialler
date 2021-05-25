//
//  ContentView.swift
//  dialler
//
//  Created by iOSDev on 2021/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberString: String
    
    init() {
        _numberString = State(initialValue: " ")
    }
    var body: some View {
        HStack {
            NavigationView {
                VStack {
                    Text(numberString)
                        .font(.system(size: 30))
                        .padding()
                    Spacer()
                    HStack {
                        Spacer()
                        Spacer()
                        Button(action: {
                            numberString += "1"
                        }) {
                            Text("1")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "2"
                        }) {
                            Text("2")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "3"
                        }) {
                            Text("3")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Spacer()
                        Button(action: {
                                numberString += "4"
                        }) {
                            Text("4")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "5"
                        }) {
                            Text("5")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "6"
                        }) {
                            Text("6")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Spacer()
                        
                    }
                    HStack {
                        Spacer()
                        Spacer()
                        Button(action: {
                                numberString += "7"
                        }) {
                            Text("7")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "8"
                        }) {
                            Text("8")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "9"
                        }) {
                            Text("9")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Spacer()
                        Button(action: {
                                numberString += "#"
                        }) {
                            Text("#")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "0"
                        }) {
                            Text("0")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Button(action: {
                                numberString += "*"
                        }) {
                            Text("*")
                                .font(.system(size: 70))
                        }
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                    NavigationLink(destination: SubView(numString: numberString)) {
                        Text("📞")
                            .font(.system(size: 70))
                    }
                    .background(Color.green)
                    .clipShape(Circle())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

struct SubView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var numString: String
    var body: some View {
        Text(numString)
            .font(.system(size: 30))
        Spacer()
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Text("❌")
                .font(.system(size: 70))
        }
        
    }
}
