//
//  SignInViewController.swift
//  HomeWork15
//
//  Created by Лика Котик on 08.07.2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
    
        let signInLabel = UILabel()
        signInLabel.text = "Sign In"
        signInLabel.textAlignment = .center
        signInLabel.font = UIFont.systemFont(ofSize: 35)
        signInLabel.frame = CGRect(x: 50, y: 100, width: 300, height: 100)
        view.addSubview(signInLabel)
        
       
        let emailTextField = UITextField()
        emailTextField.placeholder = "email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.frame = CGRect(x: 45, y: 200, width: 285, height: 45)
        view.addSubview(emailTextField)
        
  
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.frame = CGRect(x: 45, y: 270, width: 285, height: 45)
        view.addSubview(passwordTextField)
        
      
        let goButton = UIButton(type: .system)
                goButton.setTitle("Go", for: .normal)
                goButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
                goButton.backgroundColor = .systemPink
                goButton.setTitleColor(.white, for: .normal)
                goButton.layer.cornerRadius = 10
                goButton.translatesAutoresizingMaskIntoConstraints = false
                goButton.addTarget(self, action: #selector(goButtonTapped), for: .touchUpInside)
                view.addSubview(goButton)
                
           
                NSLayoutConstraint.activate([
                    signInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    signInLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
                    
                    emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    emailTextField.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 30),
                    emailTextField.widthAnchor.constraint(equalToConstant: 300),
                    emailTextField.heightAnchor.constraint(equalToConstant: 50),
                    
                    passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
                    passwordTextField.widthAnchor.constraint(equalToConstant: 300),
                    passwordTextField.heightAnchor.constraint(equalToConstant: 50),
                    
                    goButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    goButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
                    goButton.widthAnchor.constraint(equalToConstant: 100),
                    goButton.heightAnchor.constraint(equalToConstant: 50)
                ])
            }
    @objc private func goButtonTapped() {
       
        debugPrint("Go button tapped")
    }
}
