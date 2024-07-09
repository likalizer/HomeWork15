//
//  ViewController.swift
//  HomeWork15
//
//  Created by Лика Котик on 14.06.2024.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        debugPrint("ViewController -> viewDidLoad")
        
        
    }
    
    @IBAction func presentSignUpScreen(_ sender: Any) {
        
        let signUpVC = SignUpViewController()
        signUpVC.modalPresentationStyle = .fullScreen
        present(signUpVC, animated: true)
    }
    
    @IBAction func presentScreen(_ sender: Any) {
        
        let signWc = SignInViewController()
        signWc.view.backgroundColor = .white
        signWc.modalPresentationStyle = .fullScreen
        
        present(signWc, animated: true)
        
        
    }
    @IBAction func skip(_ sender: Any) {

        debugPrint("Skipped")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let tabBarController = storyboard.instantiateViewController(withIdentifier: "UITabViewcontroller") as? UITabBarController {
            tabBarController.modalPresentationStyle = .fullScreen
            present(tabBarController, animated: true, completion: nil)
        } else {
            print("Failed to instantiate UITabViewcontroller")
        }
    }
    
}
