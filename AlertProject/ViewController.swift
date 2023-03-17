//
//  ViewController.swift
//  AlertProject
//
//  Created by Onur Bulut on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordAgainText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpAction(_ sender: Any) {

        
        if userNameText.text == ""
        {
            return  makeAlert(title: nil, message:  "User name is empty!")
          
        }
           
        if passwordText.text == ""
        {
            return  makeAlert(title: nil, message: "Password is empty!")
          

            

        }
        
        if passwordAgainText.text == ""
        {
            return   makeAlert(title: nil, message: "Password again  is empty!")
            


        }
        
        
        if passwordAgainText.text != passwordText.text
        {
             makeAlert(title: nil, message: "Passwords are not same!")
           
        }
        
        makeAlert(title: "Success", message: "User Ok!")
        

    }
    
    func makeAlert(title : String?,message: String  ){
        
        
        let alert = UIAlertController(title: (title ?? "Error"), message: message, preferredStyle: UIAlertController.Style.alert)
               
               
               let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.default) { UIAlertAction in
                   print("Button tapped")
               }
               alert.addAction(okButton )
        self.present(alert, animated:true,completion:nil)
    }
}

