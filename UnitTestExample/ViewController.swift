//
//  ViewController.swift
//  UnitTestExample
//
//  Created by Firoj Shaikh on 20/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import UIKit

struct RegisterUser {
    var fname: String
    var lname: String
    var emailAdd: String
    var contact: String
}

class ViewController: UIViewController {

    //MARK:- IBOutlet's
    
    @IBOutlet weak var txtFname: UITextField!
    @IBOutlet weak var txtLName: UITextField!
    @IBOutlet weak var txtEmailAdd: UITextField!
    @IBOutlet weak var txtContactNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Preapre parameter for Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let _ = sender else {
            return
        }
        if let vc = segue.destination as? DetailVC {
            
            if let userInfo = prepareRegisterObject() {
                vc.userInfo = userInfo
            }
        }
    }
    
    
    // Get All information from view & prepare Register user object
    
    func prepareRegisterObject()->RegisterUser? {
        print("first name = \(String(describing: txtFname?.text))")
        guard let fname = txtFname?.text, let lname = txtLName?.text, let email = txtEmailAdd?.text, let contact = txtContactNumber?.text else {
            return nil
        }
        let registeredUser = RegisterUser(fname: fname, lname: lname, emailAdd: email, contact: contact)
        return registeredUser
        
    }
    
    // MARK: - Validation function - please transfer this function to appropriate file based on your architecture
    
    func isValidEmail(strEmail: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: strEmail)
    }

}

