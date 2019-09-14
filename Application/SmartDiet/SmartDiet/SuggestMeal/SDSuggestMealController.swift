//
//  UpdateMealController.swift
//  SmartDiet
//
//  Created by Swati on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

class SuggestMealController: UIViewController ,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource{
    var toolBar = UIToolbar()
    var picker  = UIPickerView()
    var arrIllness = ["fever","cold","none"]
    
   var arrFoodType = ["breakfast","Lunch","Dinner"]
    var food:FoodModelProtocol?
    var isIllnessSelected:Bool = true
    
    @IBOutlet weak var calorieTxtField: UITextField!
    
    
    @IBOutlet weak var sleepTypeTxtfield: UITextField!
    
    
    @IBOutlet weak var illenssButton: UIButton!
    
    
    @IBOutlet weak var foodTimeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker = UIPickerView.init()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func illnessAction(_ sender: Any) {
        isIllnessSelected = true
        
        for x in 0..<arrIllness.count{
            if(arrIllness[x] == illenssButton.title(for: .normal) ?? "") {
                picker.selectRow(x, inComponent: 0, animated: false)
                break
            }
        }
        
        setUpToolBar()
    }
    
    @IBAction func foodtImeAction(_ sender: Any) {
        isIllnessSelected = false
        for x in 0..<arrFoodType.count{
            if(arrFoodType[x] == foodTimeButton.title(for: .normal) ?? "") {
                picker.selectRow(x, inComponent: 0, animated: false)
                break
            }
        }
         setUpToolBar()
    }
    func setUpToolBar(){
        picker.delegate = self
        picker.backgroundColor = UIColor.white
        picker.setValue(UIColor.black, forKey: "textColor")
        picker.autoresizingMask = .flexibleWidth
        picker.contentMode = .center
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 300)
        self.view.addSubview(picker)
        
        toolBar = UIToolbar.init(frame: CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 50))
        toolBar.barStyle = .blackTranslucent
        toolBar.items = [UIBarButtonItem.init(title: "Done", style: .done, target: self, action: #selector(onDoneButtonTapped))]
        self.view.addSubview(toolBar)
    }
    @objc func onDoneButtonTapped() {
        if isIllnessSelected{
            var selectedValue = arrIllness[picker.selectedRow(inComponent: 0)]
            illenssButton.setTitle("\(selectedValue)", for: .normal)
        }else{
            var selectedValue = arrFoodType[picker.selectedRow(inComponent: 0)]
            
            foodTimeButton.setTitle("\(selectedValue)", for: .normal)
        }
       
        toolBar.removeFromSuperview()
        picker.removeFromSuperview()
    }
    
    @IBAction func suggestMealAPICall(_ sender: Any) {
        
        var illness:Int = 3
        var foodTime:Int = 1
        for x in 0..<arrFoodType.count{
            if(arrFoodType[x] == foodTimeButton.title(for: .normal) ?? "") {
                foodTime = x + 1
                break
            }
        }
        for x in 0..<arrIllness.count{
            if(arrIllness[x] == illenssButton.title(for: .normal) ?? "") {
                illness = x + 1
                break
            }
        }
        let params: [String:Any] = [
            "calories" : Int(calorieTxtField.text ?? "100") ?? 100,
            "sleeptime": Float(sleepTypeTxtfield.text ?? "100") ?? 7.3,
            "illness": illness,
            "foodtime": foodTime
        ]
        
        if(food != nil) {
            updateMe(params: params)
            return
        }
        
        let  urlstring = "http://10.71.164.4:8000/data/suggestme/"
        
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
                    }
                }
            }
            
        }
        
    }
    
    func updateMe(params:[String:Any]) {
        var params = params
        params["food_id"] = food!.food_id
        
        let  urlstring = "http://10.71.164.4:8000/data/updateme/"
        
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
                    }
                }
            }
            
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if isIllnessSelected{
            return arrIllness.count

        }else{
            return arrFoodType.count

        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if isIllnessSelected{
            return arrIllness[row]

        }else{
            return arrFoodType[row]

        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if isIllnessSelected{
            print(arrIllness[row])

        }else{
            print(arrFoodType[row])

        }
       
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        
        return true
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
