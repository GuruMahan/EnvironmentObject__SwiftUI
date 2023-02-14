//
//  EnvironmentObjectPOCApp.swift
//  EnvironmentObjectPOC
//
//  Created by Guru Mahan on 14/02/23.
//

import SwiftUI

@main
struct EnvironmentObjectPOCApp: App {
    var body: some Scene {
        WindowGroup {
            View1()
                .environmentObject(EnvironmentVM())
        }
    }
}
