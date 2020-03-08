//
//  LoginPageObject.swift
//  ios-test-sampleUITests
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import XCTest

final class LoginPageObject: PageObjectProtocol {

    private let app: XCUIApplication

    private var view: XCUIElement {
        app.otherElements[AccesibilityIdentifier.loginView.rawValue]
    }

    private var idTextField: XCUIElement {
        view.textFields[AccesibilityIdentifier.loginIDTextField.rawValue]
    }

    private var passwordTextField: XCUIElement {
        view.secureTextFields[AccesibilityIdentifier.loginPasswordTextField.rawValue]
    }

    private var loginButton: XCUIElement {
        view.buttons[AccesibilityIdentifier.loginLoginButton.rawValue]
    }

    var pageExists: Bool {
        view.exists
    }

    init(application: XCUIApplication) {
        self.app = application
    }

    func login() -> Void {
        XCTContext.runActivity(named: "Login") { _ in
            idTextField.typeText("kagemiku")
            passwordTextField.typeText("password")

            loginButton.tap()
        }

        return ()
    }

}
