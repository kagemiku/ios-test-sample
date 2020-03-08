//
//  AccesibilityIdentifiers.swift
//  ios-test-sample
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import Foundation

protocol AccesibilityIdentifierProtocol {
    var rawValue: String { get }
}

enum AccesibilityIdentifier: String, AccesibilityIdentifierProtocol {

    // MARK: Login

    case loginView = "com.kagemiku.login.view"
    case loginIDTextField = "com.kagemiku.login.id_text_field"
    case loginPasswordTextField = "com.kagemiku.login.password_text_field"
    case loginLoginButton = "com.kagemiku.login.login_button"

    // MARK: Top

    case topView = "com.kagemiku.top.view"
    case topWelcomeLabel = "com.kagemiku.top.welcome_label"

}
