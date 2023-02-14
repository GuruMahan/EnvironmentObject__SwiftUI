//
//  View3.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import SwiftUI

struct View3: View {
    @EnvironmentObject var enService : EnvironmentVM
     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var nextScreen = false
     var body: some View {
     
             ZStack {
                 NavigationLink(isActive:$nextScreen) {
                     View4()
                 } label: {
                     EmptyView()
                 }

                 VStack {
                     Text("Third View")
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
                   
                     Text("You are in Third View")
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


struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3().environmentObject(EnvironmentVM())
    }
}
