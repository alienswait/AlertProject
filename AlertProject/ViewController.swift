//
//  ViewController.swift
//  AlertProject
//
//  Created by Mertcan Ünek on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        /*
         
         
        let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction)
            in
            //button clicked
            print("button clicked")
        }
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)
*/

         
         
        if userNameTextField.text == "" {
            
                    makeAlert(titleInput: "Error", messageInput: "Username not found!")
                } else if passwordText.text == "" {
                    
                    makeAlert(titleInput: "Error", messageInput: "Password not found!")
                } else if passwordText.text != passwordAgainText.text {
                    
                    makeAlert(titleInput: "Error", messageInput: "Passwords do no match")
                } else {
                    
                   makeAlert(titleInput: "Success", messageInput: "User OK")
                }
                
            }
            
            func makeAlert(titleInput: String, messageInput:String) {
                
                let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
}
