//
//  ContentViewInput.swift
//  TEST
//
//  Created by 김인섭 on 2023/08/06.
//

import Foundation

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

protocol ContentViewInputProcotol {
    
    var output: ContentViewOutput? { get }
    func didTapButton()
}
