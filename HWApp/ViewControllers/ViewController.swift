//
//  ViewController.swift
//  HWApp
//
//  Created by Max Stovolos on 7/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var showNameButton: UIButton!
    @IBOutlet weak var showPasswordButton: UIButton!
    
    let name = "Max"
    let password = 1520
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextPageButton() {
        guard let text = nameTextField.text, !text.isEmpty else {
            showAllert(with: "Ups", and: "Text field is empty!")
            return }
        
        if let _ = Double(text) {
            showAllert(with: "NO", and: "Wrong format")
            return }
        
        if logIn() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "tabBar")
            vc.modalPresentationStyle = .fullScreen
            let view = MainPage()
            view.name = nameTextField.text
            
            let pageSecond = Description()
            pageSecond.lableInPage = nameTextField.text
            
            self.show(vc, sender: self)
        } else {
            showAllert(with: "NO", and: "Wrong password or login")
            
        }
       
    }
    @IBAction func forgotNameButton() {
        showAllert(with: "Your name", and: "\(name)")
        
    }
    @IBAction func forgotPasswordButton() {
        showAllert(with: "Your password", and: "\(password)")
    }
}
// MARK: = UIAllertController

extension ViewController {
    private func showAllert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okeyAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.nameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okeyAction)
        present(alert, animated: true)
    }
}
  
extension ViewController {
    private func logIn() -> Bool {
        if nameTextField.text == name && passwordTextField.text == String(password) {
            return true
        } else {return false}
}
}
