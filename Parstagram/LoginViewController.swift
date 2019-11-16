//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Stephen Karukas on 11/15/19.
//  Copyright © 2019 Stephen Karukas. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logIn(_ sender: Any) {
        let userString: String = username.text!
        let passwString: String = password.text!
        PFUser.logInWithUsername(inBackground: userString, password: passwString) { (user, error) in
            if (user != nil) {
                self.performSegue(withIdentifier: "Login", sender: nil)
            } else {
                print(error)
            }
        }
    }
    @IBAction func signUp(_ sender: Any) {
        var user = PFUser()
        user.username = username.text
        user.password = password.text
        user.signUpInBackground { (success, error) in
            if (success) {
                self.performSegue(withIdentifier: "Login", sender: nil)
            } else {
                print(error)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
