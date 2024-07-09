//
//  SignUpViewController.swift
//  HomeWork15
//
//  Created by Лика Котик on 08.07.2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let signUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign Up"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let confirmpasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let goButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = .systemPink
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(signUpLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(confirmpasswordTextField)
        view.addSubview(goButton)
        
        NSLayoutConstraint.activate([
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 30),
            emailTextField.widthAnchor.constraint(equalToConstant: 300),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalToConstant: 300),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            confirmpasswordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmpasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            confirmpasswordTextField.widthAnchor.constraint(equalToConstant: 300),
            confirmpasswordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            goButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goButton.topAnchor.constraint(equalTo: confirmpasswordTextField.bottomAnchor, constant: 30),
            goButton.widthAnchor.constraint(equalToConstant: 100),
            goButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func goButtonTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if let tabBarController = storyboard.instantiateViewController(withIdentifier: "UITabViewcontroller") as? UITabBarController {
                    tabBarController.modalPresentationStyle = .fullScreen
                    present(tabBarController, animated: true)
                }
            }
        }
