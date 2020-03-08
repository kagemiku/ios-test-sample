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

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private func setup() {
        idTextField.textContentType = .username
        passwordTextField.textContentType = .password
        passwordTextField.isSecureTextEntry = true
    }

    private func validate(id: String, password: String) -> Bool {
        return !id.isEmpty && !password.isEmpty
    }

    // MARK: IBActions

    @IBAction private func didTapLoginButton(_ sender: Any) {
        guard let id = idTextField.text, let password = passwordTextField.text else { return }

        let result = validate(id: id, password: password)
        print(result)
    }
}
