import XCTest
import Capacitor
@testable import Plugin

class PluginTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_play_without_url() {
        let plugin = VideoPlayerOne()
        let call = CAPPluginCall(callbackId: "test", options: [:], success: { (result, call) in
            let resultValue = result!.data["result"] as! Bool
            XCTAssertFalse(resultValue)
        }, error: { (err) in
            XCTFail("Error shouldn't have been called")
        })
        plugin.play(call!)
    }
}
