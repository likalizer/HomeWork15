//
//  GreenViewController.swift
//  HomeWork15
//
//  Created by Лика Котик on 17.06.2024.
//

import UIKit

class SignInController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("SignInController -> viewDidload")

    }
    
//    override func loadView() {
//        debugPrint("SignInController -> loadView")
//        let newView = UIView()
//        view = newView
//    }

    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            debugPrint("SignInController -> viewWillAppear")
        }

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            debugPrint("SignInController -> viewDidAppear")
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            debugPrint("SignInController -> viewWillDisappear")
        }

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            debugPrint("SignInController -> viewDidDisappear")
        }
    
    
    @IBOutlet weak var passwordTetField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var SignInOutlet: UILabel!
    
    
}
