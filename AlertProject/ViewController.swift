//
//  ViewController.swift
//  AlertProject
//
//  Created by Gizem Nur Bozkurt on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupClicked(_ sender: Any) {
        
    
//        //uıalertcontorller hazır kütüphane
//        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle:UIAlertController.Style.alert)
//        //uyarı kutucuguna kapatma tusu eklememiz lazım
//        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
//        //kapatma tusuu uyarı mesajına bagladık
//        alert.addAction(okButton)
//        //sınıfımın kendisine bunu göstermesini söylüyorum self ile
//        self.present(alert, animated: true, completion: nil)
        
        // bunu copy paste yapacagımıza fonksiyon oluşturup cagırmak daha mantıklı olur !!!!!!!!!!
//        if usernameText.text == ""  {
//            let alertUsername = UIAlertController(title: "Error!", message: "please enter username", preferredStyle: UIAlertController.Style.alert)
//            let okButtonUsername = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
//            alertUsername.addAction(okButtonUsername)
//            self.present(alertUsername, animated: true, completion: nil)
//        } else  if  passwordText.text == "" {
//            let alertUsername = UIAlertController(title: "Error!", message: "please enter password", preferredStyle: UIAlertController.Style.alert)
//            let okButtonUsername = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
//            alertUsername.addAction(okButtonUsername)
//            self.present(alertUsername, animated: true, completion: nil)
//        } else if passwordText.text != password2Text.text {
//            let alertUsername = UIAlertController(title: "Error!", message: "password do not match", preferredStyle: UIAlertController.Style.alert)
//            let okButtonUsername = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
//            alertUsername.addAction(okButtonUsername)
//            self.present(alertUsername, animated: true, completion: nil)
//        } else {
//            let alertUsername = UIAlertController(title: "Success", message: "user signed", preferredStyle: UIAlertController.Style.alert)
//            let okButtonUsername = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
//            alertUsername.addAction(okButtonUsername)
//            self.present(alertUsername, animated: true, completion: nil)
//        }
        
        if usernameText.text == "" {
            alertFunc(titleInput: "Error", messageInput: "Please enter username")
        } else if passwordText.text == "" {
            alertFunc(titleInput: "Error!", messageInput: "Please enter password")
        } else if passwordText.text != password2Text.text {
            alertFunc(titleInput: "Error!", messageInput: "Password do not match")
        } else {
            alertFunc(titleInput: "Success", messageInput: "User sign success")
        }
    }
    
    
    func alertFunc(titleInput:String, messageInput:String ) {
        let alertUsername = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButtonUsername = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
        alertUsername.addAction(okButtonUsername)
        self.present(alertUsername, animated: true, completion: nil)
    }
}

