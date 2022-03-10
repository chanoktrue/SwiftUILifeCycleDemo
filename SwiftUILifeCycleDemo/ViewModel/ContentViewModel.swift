//
//  ContentViewModel.swift
//  SwiftUILifeCycleDemo
//
//  Created by Thongchai Subsaidee on 10/3/22.
//

import Foundation



final class ContentViewModel: ObservableObject {
    @Published var state = ContentModel()
}
