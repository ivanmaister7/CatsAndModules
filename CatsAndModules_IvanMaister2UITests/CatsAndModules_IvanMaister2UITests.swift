//
//  CatsAndModules_IvanMaister2UITests.swift
//  CatsAndModules_IvanMaister2UITests
//
//  Created by Master on 06.07.2022.
//

import XCTest

class CatsAndModules_IvanMaister2UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        snapshot("IvanMaister_MainScreen")
        
        let namePearlButton = app.scrollViews.otherElements.buttons["Name: Ivan"]
        namePearlButton.swipeUp()
        namePearlButton.tap()
        sleep(2)
        
        snapshot("IvanMaister_DetailsScreen")
        
        
    }

}
