//
//  ContentViewModel.swift
//  TEST
//
//  Created by 김인섭 on 2023/08/04.
//

import Foundation
import Combine

protocol ContentViewInputProcotol {
    
    var output: ContentViewOutput? { get }
    func didTapButton()
}

class ContentViewOutput: ObservableObject {
    @Published var count: Int = 0
}

class ContentViewInput: ContentViewInputProcotol {
    
    private(set) weak var output: ContentViewOutput?
    
    init(output: ContentViewOutput?) {
        self.output = output
    }
    
    func didTapButton() {
        addCount()
    }
}

private extension ContentViewInput {
    
    func addCount() {
        output?.count += 1
    }
}
