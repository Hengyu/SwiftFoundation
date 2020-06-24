import XCTest
@testable import SwiftFoundation

final class SwiftFoundationTests: XCTestCase {

    private class Foo { }

    func testWeak() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var f: Foo? = Foo()
        let w = Weak(f!)
        XCTAssert(w.value != nil)
        f = nil
        XCTAssert(w.value == nil)
    }

    static var allTests = [
        ("testExample", testWeak),
    ]
}
