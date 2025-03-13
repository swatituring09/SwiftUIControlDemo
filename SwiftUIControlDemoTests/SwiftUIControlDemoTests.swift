import XCTest
@testable import SwiftUIControlDemo  // Replace with your actual app name

final class OpacitySliderViewTests: XCTestCase {

    func testInitialOpacityValue() {
        let viewModel = OpacityViewModel()
        XCTAssertEqual(viewModel.opacity, 1.0, "Initial opacity should be 1.0")
    }

    func testSliderValueChange() {
        let viewModel = OpacityViewModel()
        
        viewModel.opacity = 0.5
        XCTAssertEqual(viewModel.opacity, 0.5, "Opacity should update to 0.5 when slider is moved")

        viewModel.opacity = 0.2
        XCTAssertEqual(viewModel.opacity, 0.2, "Opacity should update to 0.2")
    }

    func testMinimumOpacityValue() {
        let viewModel = OpacityViewModel()
        
        viewModel.opacity = 0.0
        XCTAssertEqual(viewModel.opacity, 0.0, "Opacity should be 0.0 at minimum slider value")
    }

    func testMaximumOpacityValue() {
        let viewModel = OpacityViewModel()
        
        viewModel.opacity = 1.0
        XCTAssertEqual(viewModel.opacity, 1.0, "Opacity should be 1.0 at maximum slider value")
    }

    func testIntermediateOpacityValues() {
        let viewModel = OpacityViewModel()
        
        let testValues: [Double] = [0.25, 0.5, 0.75]
        for value in testValues {
            viewModel.opacity = value
            XCTAssertEqual(viewModel.opacity, value, "Opacity should update to \(value)")
        }
    }
}

