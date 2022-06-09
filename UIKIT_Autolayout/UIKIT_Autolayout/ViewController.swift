//
//  ViewController.swift
//  UIKIT_Autolayout
//
//  Created by David Bueno Castro on 9/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        self.view = OnboardingView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
}

