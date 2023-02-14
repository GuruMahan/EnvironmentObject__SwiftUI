//
//  View5.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import SwiftUI

struct View5: View {
    @EnvironmentObject var enService : EnvironmentVM
     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var nextScreen = false
     var body: some View {
       
             ZStack {
                

                 VStack {
                     Text("Five View")
                         .offset(y:100)
                         .padding()
                     Spacer()
                     Button {
                      enService.bgColor = .white
                         enService.nextBColor = .blue
                     } label: {
                         Image(systemName: "globe")
                             .imageScale(.large)
                             .foregroundColor(.accentColor)
                           
                     }
                     Spacer()
                   
                     Text("You are in Five View")
                         .padding()
                     Spacer()
                    

                 }
                 .frame(maxWidth: .infinity,maxHeight: .infinity)
                 .background(enService.bgColor)
                 .padding()
             }
         
     }

}

struct View5_Previews: PreviewProvider {
    static var previews: some View {
        View5().environmentObject(EnvironmentVM())
    }
}
