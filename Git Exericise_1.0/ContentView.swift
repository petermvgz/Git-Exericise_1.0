//
//  ContentView.swift
//  Git Exericise_1.0
//
//  Created by Peter Deyi on 2/12/23.
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(.gray))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}
// created struct that conforms to the ButtonStyle protocol so we get the BlueButton style

struct ContentView: View {
    @State private var imageTop = "swift"
    @State private var imageMiddle = "globe"
    // @State (property wrapper) will store a value in an area of memory where it can be changed (muated)
    // It will not be destroyed when a view is recreated
    // When the value stored by a @State varible changes, any views depending on that @State value will be re-created
    // Add private after @State to make sure no other parts of your should see any special @State varibles that are only used in this view
    // IF YOU NEED TO CHANGE A VARIBLE THATS SPECIFIC TO A SINGLE VIEW, USE @State
    var body: some View {
        VStack {
            Image(systemName: imageTop)
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .scaleEffect(3)
                .frame(width:80.0, height: 80.0)
                .foregroundColor(.orange)
            
            Text("Welcome to Git")
                .fontWeight(.medium)
                
            Spacer()
            
            Image(systemName: imageMiddle)
                .resizable()
                .padding(.all)
                .imageScale(.small)
                .scaledToFit()
                .foregroundColor(Color(red: 0.0, green: 50.0, blue: 50.0, opacity: 10.0))
            Spacer()
            Text("Version 1.1")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Spacer()
            Button("Continue"){
                
                
                // No action yet
                
            }
            .padding(10.0)
            .background(Color(.gray))
            .clipShape(Capsule())
            .buttonStyle(BlueButton())
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
