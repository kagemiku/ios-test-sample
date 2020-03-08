//
//  PageObject.swift
//  ios-test-sampleUITests
//
//  Created by kagemiku on 2020/03/08.
//  Copyright © 2020 kagemiku. All rights reserved.
//

import XCTest

protocol PageObjectProtocol {

    var pageExists: Bool { get }

    init(application: XCUIApplication)

}

extension PageObjectProtocol {

    var pageExists: Bool {
        false
    }

}
