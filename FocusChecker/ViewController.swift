//
//  ViewController.swift
//  FocusChecker
//
//  Created by gap on 30/5/2022.
//

import Cocoa
import Intents


class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

        /// Retrieve the current authorization status: INFocusStatusAuthorizationStatus
        if #available(macOS 12.0, *) {
			INFocusStatusCenter.default.requestAuthorization { status in
                    print(status.rawValue)
			}

			print("INFocusStatusCenter.default.authorizationStatus", INFocusStatusCenter.default.authorizationStatus.rawValue)

			let isFocused = INFocusStatusCenter.default.focusStatus.isFocused

			print("isFocused = ", isFocused ?? "UNKNOWN")
        }
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}
}

