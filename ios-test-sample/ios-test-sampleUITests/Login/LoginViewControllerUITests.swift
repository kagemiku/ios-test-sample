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

        XCTContext.runActivity(named: "Login view is shown") { _ in
            let loginView = app.otherElements[AccesibilityIdentifier.loginView.rawValue]
            XCTAssertTrue(loginView.exists)
        }

        XCTContext.runActivity(named: "Input ID and Password") { _ in
            let idTextField = app.textFields[AccesibilityIdentifier.loginIDTextField.rawValue]
            let passwordTextField = app.secureTextFields[AccesibilityIdentifier.loginPasswordTextField.rawValue]

            XCTAssertTrue(idTextField.exists)
            XCTAssertTrue(passwordTextField.exists)

            idTextField.tap()
            idTextField.typeText("kagemiku")
            passwordTextField.tap()
            passwordTextField.typeText("password")
        }

        XCTContext.runActivity(named: "Login") { _ in
            let loginButton = app.buttons[AccesibilityIdentifier.loginLoginButton.rawValue]

            XCTAssertTrue(loginButton.exists)

            loginButton.tap()
        }

        XCTContext.runActivity(named: "Top view is shown") { _ in
            let topView = app.otherElements[AccesibilityIdentifier.topView.rawValue]
            XCTAssertTrue(topView.waitForExistence(timeout: 1.0))
        }
    }

}
