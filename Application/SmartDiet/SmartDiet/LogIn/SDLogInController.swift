//
//  LogInController.swift
//  SmartDiet
//
//  Created by Swati on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

class SDLogInController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var usernameTxtFiled: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        let sv = displaySpinner(onView: self.view)
removeSpinner(spinner: sv)
        logInAPICallwith(username:usernameTxtFiled.text ?? "",password:passwordTxtField.text ?? "")
        loadHomeScreen()

    }
    func  logInAPICallwith(username:String,password:String){
        let params = [
            "email_id":"swati_rout@epam.com",
            "password":"swati123"
        ]
        let  urlstring = "http://10.71.164.4:8000/authenticate/login/"
        
        if let url = URL(string:urlstring){
            let request = NSMutableURLRequest(url: url)
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject:params, options: .prettyPrinted)
            }
            catch{}
           request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            NetWorking.commonServiceCall(urlRequest: request as URLRequest) { (response: Any?, error:Error?) in
                if let unWrappedResponse = response as? [String: Any] {
                    print("unWrappedResponse",unWrappedResponse)
                    DispatchQueue.main.async {
                        self.loadHomeScreen()
                    }
                }
            }

        }
    }

    func loadHomeScreen(){
        let vcTabController = UIStoryboard.getViewControllerWithId(StoryBoardNames.Food, ControllerIds.tabBarController)
        self.navigationController?.pushViewController(vcTabController, animated: false)
    }

}
