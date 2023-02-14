//
//  View2.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import SwiftUI

struct View2: View {
    @EnvironmentObject var enService : EnvironmentVM
     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var nextScreen = false
     var body: some View {
       
             ZStack {
                 NavigationLink(isActive:$nextScreen) {
                     View3()
                 } label: {
                     EmptyView()
                 }

                 VStack {
                     Text("Second View")
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
                   
                     Text("You are in Second View")
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


struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2().environmentObject(EnvironmentVM())
    }
}
