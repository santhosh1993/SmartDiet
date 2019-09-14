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
        var params = [
            "email_id":"swati_rout@epam.com",
            "password":"swati123"
        ]
       var  urlstring = "http://10.71.164.4:8000/authenticate/login/"
        
        if let url = URL(string:urlstring){
            var request = NSMutableURLRequest(url: url)
            do{
                request.httpBody = try JSONSerialization.data(withJSONObject:params, options: .prettyPrinted)
            }
            catch{
                
            }
           request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            NetWorking.commonServiceCall(urlRequest: request as URLRequest) { (response: Any?, error:Error?) in
                if let unWrappedResponse = response as? [String: Any] {
                    print("unWrappedResponse",unWrappedResponse)
                    //if let val =
                }
            }

            //let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
//                if let data = data {
//                    if let stringData = String(data: data, encoding: String.Encoding.utf8) {
//                        print(stringData)
//                        //UIViewController.removeSpinner(spinner: sv)
//
//                        //JSONSerialization
//                    }
//                }
//            })
            //task.resume()
        }
        
        
       
    }

    func loadHomeScreen(){
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let loggedInViewController = storyBoard.instantiateViewController(withIdentifier: "LoggedInViewController") as! LoggedInViewController
//        self.present(loggedInViewController, animated: true, completion: nil)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }

}
