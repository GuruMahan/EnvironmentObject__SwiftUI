//
//  View4.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import SwiftUI

struct View4: View {
    @EnvironmentObject var enService : EnvironmentVM
     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var nextScreen = false
     var body: some View {
     
             ZStack {
                 NavigationLink(isActive:$nextScreen) {
                     View5()
                 } label: {
                     EmptyView()
                 }

                 VStack {
                     Text("Four View")
                         .offset(y:100)
                         .padding()
                     Spacer()
                     Button {
                      //   enService.bgColor = .white
                     } label: {
                         Image(systemName: "globe")
                             .imageScale(.large)
                             .foregroundColor(.accentColor)
                           
                     }
                     Spacer()
                   
                     Text("You are in Four View")
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

struct View4_Previews: PreviewProvider {
    static var previews: some View {
        View4().environmentObject(EnvironmentVM())
    }
}
