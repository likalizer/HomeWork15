//
//  WhiteViewController.swift
//  HomeWork15
//
//  Created by Лика Котик on 08.07.2024.
//


class WhiteViewController: UIViewController {
    
    @IBAction func presentScreen(_ sender: Any) {
        
        let WhiteWc = SignInViewController()
        WhiteWc.view.backgroundColor = .white
        WhiteWc.modalPresentationStyle = .fullScreen
        
        present(WhiteWc, animated: true)
    }
}
