//
//  EnvironmentVM.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import Foundation
import SwiftUI

class EnvironmentVM:ObservableObject{
    @Published var bgColor: Color = .red
    @Published var nextBColor: Color = .green
   
}
