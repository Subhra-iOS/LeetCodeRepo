import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LeetCodeRepoTests.allTests),
    ]
}
#endif
