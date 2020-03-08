//
//  LoginViewController.swift
//  ios-test-sample
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IBOutlets

    @IBOutlet private weak var idTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private func setup() {
        idTextField.textContentType = .username
        idTextField.accessibilityIdentifier = AccesibilityIdentifiers.Login.idTextField.rawValue

        passwordTextField.textContentType = .password
        passwordTextField.isSecureTextEntry = true
        passwordTextField.accessibilityIdentifier = AccesibilityIdentifiers.Login.passwordTextField.rawValue

        loginButton.accessibilityIdentifier = AccesibilityIdentifiers.Login.loginButton.rawValue
    }

    private func validate(id: String, password: String) -> Bool {
        return !id.isEmpty && !password.isEmpty
    }

    // MARK: IBActions

    @IBAction private func didTapLoginButton(_ sender: Any) {
        guard let id = idTextField.text, let password = passwordTextField.text else { return }

        if validate(id: id, password: password) {
            let vc = TopViewController()
            vc.id = id
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
