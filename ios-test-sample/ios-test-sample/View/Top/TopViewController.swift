//
//  TopViewController.swift
//  ios-test-sample
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    var id: String = ""

    // MARK: IBOutlets

    @IBOutlet private weak var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private func setup() {
        title = id

        welcomeLabel.accessibilityIdentifier = AccesibilityIdentifiers.Top.welcomeLabel.rawValue
    }

}
