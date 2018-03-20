//
//  DetailVC.swift
//  UnitTestExample
//
//  Created by Firoj Shaikh on 20/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var txtUserInfo: UITextView!
    
    var userInfo: RegisterUser? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setUserInformation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        print("user information as = \(String(describing: userInfo))")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK:- User Events
    
    @IBAction func tapExit(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUserInformation() {
        if let userInfomation = userInfo {
            
            let fname = userInfomation.fname + " "
            let lname = userInfomation.lname + " "
            let email = userInfomation.emailAdd + " "
            let contact  = userInfomation.contact + " "
            
            self.txtUserInfo.text = fname + lname + email + contact
        }
    }
    
    
}
