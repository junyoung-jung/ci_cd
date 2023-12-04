//
//  ci_cdTests.swift
//  ci_cdTests
//
//  Created by 정준영 on 12/4/23.
//

import XCTest
@testable import ci_cd

final class ci_cdTests: XCTestCase {

    func testTransform() {
            // Given
            let viewModel = ViewModel_Test()
            let input = ViewModel_Test.Input(inputString: "Hello")
            
            // When
            let output = viewModel.transform(input: input)
            
            // Then
            XCTAssertEqual(output.outputString, "Hello plus 1")
            XCTAssertEqual(viewModel.count, 1)
        }


}
