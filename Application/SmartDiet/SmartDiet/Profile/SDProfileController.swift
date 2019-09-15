//
//  SDProfileController.swift
//  SmartDiet
//
//  Created by Swati on 15/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

class SDProfileController: UIViewController ,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource{
    var toolBar = UIToolbar()
    var picker  = UIPickerView()
    var arrAddiction = ["smoking","drinking","none"]
    
    var arrFrequency = ["Low","Medium","High"]
    var food:FoodModelProtocol?
    var isAddictionSelected:Bool = true
    
    
    @IBOutlet weak var nameTxtField: UITextField!
    
    
    @IBOutlet weak var emailTxtfield: UITextField!
    
    
    @IBOutlet weak var addictionButton: UIButton!
    
    
    @IBOutlet weak var frequencyTimeButton: UIButton!
    
    @IBOutlet weak var frequencyLabel: UILabel!
    var addictionToBeSaved:String = ""
    var frequencyToBeSaved:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        picker = UIPickerView.init()
        addictionButton.setTitle("smoking", for: .normal)
        frequencyTimeButton.setTitle("Low", for: .normal)
        if let val:String = "none" as String?{
            UserDefaults.standard.set(val, forKey: "Addiction")
            
        }
//        if(food != nil) {
//            arrAddiction = ["smoking","drinking"]
//        }
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AddictionAction(_ sender: Any) {
        isAddictionSelected = true
        
        for x in 0..<arrAddiction.count{
            if(arrAddiction[x] == addictionButton.title(for: .normal) ?? "") {
                picker.selectRow(x, inComponent: 0, animated: false)
                break
            }
        }
        
        setUpToolBar()
    }
    
    @IBAction func frequencyAction(_ sender: Any) {
        isAddictionSelected = false
        for x in 0..<arrFrequency.count{
            if(arrFrequency[x] == frequencyTimeButton.title(for: .normal) ?? "") {
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
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 270, width: UIScreen.main.bounds.size.width, height: 200)
        self.view.addSubview(picker)
        
        toolBar = UIToolbar.init(frame: CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height-300, width: UIScreen.main.bounds.size.width, height: 50))
        toolBar.barStyle = .default
        toolBar.items = [UIBarButtonItem.init(title: "Done", style: .done, target: self, action: #selector(onDoneButtonTapped))]
        
        self.view.addSubview(toolBar)
    }
    @objc func onDoneButtonTapped() {
        if isAddictionSelected{
            var selectedValue = arrAddiction[picker.selectedRow(inComponent: 0)]
            addictionButton.setTitle("\(selectedValue)", for: .normal)
            addictionToBeSaved = selectedValue
            if addictionToBeSaved == "none"{
               frequencyTimeButton.isHidden = true
                frequencyLabel.isHidden = true
                
            }else{
                frequencyTimeButton.isHidden = false
                frequencyLabel.isHidden = false
            }
            
        }else{
            frequencyTimeButton.isHidden = false
            frequencyLabel.isHidden = false
            var selectedValue = arrFrequency[picker.selectedRow(inComponent: 0)]
            
            frequencyTimeButton.setTitle("\(selectedValue)", for: .normal)
            frequencyToBeSaved = selectedValue
        }
        
        toolBar.removeFromSuperview()
        picker.removeFromSuperview()
    }
    
    @IBAction func saveInUserDefaultsAction(_ sender: Any) {
        if let val:String = addictionToBeSaved as String?{
    UserDefaults.standard.set(val, forKey: "Addiction")
        }
        
        let adictionName = UserDefaults.standard.string(forKey: "Addiction")

        print("adictionName",adictionName)
        
        if let valFreq:String = frequencyToBeSaved as String?{
            UserDefaults.standard.set(valFreq, forKey: "Frequency")
            
        }
        let frequencyName = UserDefaults.standard.string(forKey: "Frequency")
        
        print("frequencyName",frequencyName)
        
        let alert = UIAlertController(title: "Alert", message: "Data Saved Successfully ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if isAddictionSelected{
            return arrAddiction.count
            
        }else{
            return arrFrequency.count
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if isAddictionSelected{
            return arrAddiction[row]
            
        }else{
            return arrFrequency[row]
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if isAddictionSelected{
            print(arrAddiction[row])
            
        }else{
            print(arrFrequency[row])
            
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
