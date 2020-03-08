//
//  LoginViewControllerUITests.swift
//  ios-test-sampleUITests
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import XCTest

class LoginViewControllerUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() { }

    func testLogin() {
        let app = XCUIApplication()
        let idTextField = app.textFields[AccesibilityIdentifiers.Login.idTextField.rawValue]
        let passwordTextField = app.secureTextFields[AccesibilityIdentifiers.Login.passwordTextField.rawValue]
        let loginButton = app.buttons[AccesibilityIdentifiers.Login.loginButton.rawValue]
        let navBar = app.navigationBars.firstMatch

        XCTAssertTrue(idTextField.exists)
        XCTAssertTrue(passwordTextField.exists)
        XCTAssertTrue(loginButton.exists)
        XCTAssertTrue(navBar.exists)

        idTextField.tap()
        idTextField.typeText("kagemiku")
        passwordTextField.tap()
        passwordTextField.typeText("password")
        loginButton.tap()

        let welcomeLabel = app.staticTexts[AccesibilityIdentifiers.Top.welcomeLabel.rawValue]
        XCTAssertTrue(welcomeLabel.waitForExistence(timeout: 1.0))
        XCTAssertEqual(navBar.title, "kagemiku")
    }


}
