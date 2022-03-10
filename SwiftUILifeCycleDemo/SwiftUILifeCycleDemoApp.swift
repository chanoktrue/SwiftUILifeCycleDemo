//
//  SwiftUILifeCycleDemoApp.swift
//  SwiftUILifeCycleDemo
//
//  Created by Thongchai Subsaidee on 10/3/22.
//

import SwiftUI

@main
struct SwiftUILifeCycleDemoApp: App {
    
    @Environment(\.scenePhase) var phase
    @StateObject var contentVM = ContentViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(contentVM: contentVM)
                .onChange(of: phase) { newPhase in
                    switch newPhase {
                    case  .active :
                        print("App is active state")
                        contentVM.state.isActive = true
                    case .inactive :
                        print("App is inActive state")
                        contentVM.state.isActive = false
                    case .background  :
                        print("App is background state")
                        contentVM.state.isActive = false
                    default :
                        print("Unknown status")
                        contentVM.state.isActive = false
                    }
                }
        }
    }
}
