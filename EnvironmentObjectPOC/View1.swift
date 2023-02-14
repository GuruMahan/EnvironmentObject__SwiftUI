//
//  ContentView.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import SwiftUI

struct View1: View {
   @EnvironmentObject var enService : EnvironmentVM
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   @State var nextScreen = false
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(isActive: $nextScreen) {
                    View2()
                } label: {
                    EmptyView()
                }

                VStack {
                    Text("First View")
                        .offset(y:100)
                        .padding()
                    Spacer()
                    Button {
                       enService.bgColor = .red
                        enService.nextBColor = .green
                    } label: {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                          
                    }
                    Spacer()
                  
                    Text("You are in First View")
                        .padding()
                    Spacer()
                    Button {
                        nextScreen = true
                    } label: {
                        Text("Next")
                            .frame(width: 150,height: 40)
                            .background(enService.nextBColor)
                        
                    }

                }
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(enService.bgColor)
               
                    
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        View1().environmentObject(EnvironmentVM())
    }
}
