//
//  ViewModel.swift
//  ci_cd
//
//  Created by 정준영 on 12/4/23.
//

import Foundation

protocol ViewModelProtocol {
    associatedtype Input
    associatedtype Output
    func transform(input: Input) -> Output
}

final class ViewModel: ViewModelProtocol {
    var count = 0
    struct Input {
        let inputString: String
    }
    
    struct Output {
        let outputString: String
    }
    
    func transform(input: Input) -> Output {
        count += 1
        let text = input.inputString + " plus " + "\(self.count)"
        return Output(outputString: text)
    }

}

final class ViewModel_Test: ViewModelProtocol {
    var count = 0
    struct Input {
        let inputString: String
    }
    
    struct Output {
        let outputString: String
    }
    
    func transform(input: Input) -> Output {
        count += 1
        let text = input.inputString + " plus " + "\(self.count)"
        return Output(outputString: text)
    }
}
