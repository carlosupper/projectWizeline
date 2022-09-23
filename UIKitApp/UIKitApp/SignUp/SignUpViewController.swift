//
//  SignUpViewController.swift
//  UIKitApp
//
//  Created by Laura Anguiano on 15/09/22.
//

import UIKit

final class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func didTapSignUp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "NewWelcome", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "newwelcome")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
        
        
    }
    
    @IBAction func didTapSignIn(_ sender: Any) {
        
    }
}

// MARK: - Static Methods
extension SignUpViewController {
    static func getViewController() -> SignUpViewController {
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        guard let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else {
            fatalError("ViewController must be of type SignUpViewController")
        }
        return signUpViewController
    }
    
    static func loadViewLogin() -> MenuViewController {
        let vc = MenuViewController.init(nibName: "MenuViewController", bundle: nil)
        return vc
    }
}
