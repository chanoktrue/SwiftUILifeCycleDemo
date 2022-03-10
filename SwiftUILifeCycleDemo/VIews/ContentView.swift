//
//  ContentView.swift
//  SwiftUILifeCycleDemo
//
//  Created by Thongchai Subsaidee on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contentVM: ContentViewModel
    
    var body: some View {
        Text("Hello, world!")
            .foregroundColor(contentVM.state.isActive ? .red : .gray)
            .padding()
        

            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contentVM: ContentViewModel())
    }
}
