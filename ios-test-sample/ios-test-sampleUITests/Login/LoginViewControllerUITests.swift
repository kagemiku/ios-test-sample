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
        let loginView = app.otherElements[AccesibilityIdentifier.loginView.rawValue]
        let idTextField = app.textFields[AccesibilityIdentifier.loginIDTextField.rawValue]
        let passwordTextField = app.secureTextFields[AccesibilityIdentifier.loginPasswordTextField.rawValue]
        let loginButton = app.buttons[AccesibilityIdentifier.loginLoginButton.rawValue]

        XCTAssertTrue(loginView.exists)
        XCTAssertTrue(idTextField.exists)
        XCTAssertTrue(passwordTextField.exists)
        XCTAssertTrue(loginButton.exists)

        idTextField.tap()
        idTextField.typeText("kagemiku")
        passwordTextField.tap()
        passwordTextField.typeText("password")
        loginButton.tap()

        let topView = app.otherElements[AccesibilityIdentifier.topView.rawValue]
        XCTAssertTrue(topView.waitForExistence(timeout: 1.0))
    }


}
