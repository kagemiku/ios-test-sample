//
//  TopPageObject.swift
//  ios-test-sampleUITests
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import XCTest

final class TopPageObject: PageObjectProtocol {

    private let app: XCUIApplication

    private var view: XCUIElement {
        app.otherElements[AccesibilityIdentifier.topView.rawValue]
    }

    var pageExists: Bool {
        view.exists
    }

    init(application: XCUIApplication) {
        self.app = application
    }

}
