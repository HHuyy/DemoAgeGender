//
//  ViewController.swift
//  DemoAgeGender
//
//  Created by Đừng xóa on 6/21/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var agePicker: UIPickerView!
    @IBOutlet var buttons: [UIButton]!
    let ageNumbers = [Int](1...100)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agePicker.dataSource = self
        agePicker.delegate = self
        self.agePicker.selectRow(17, inComponent: 0, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonTap(_ sender: UIButton) {
        buttons.forEach { button in
            button.isSelected = false
        }
        sender.isSelected = true
        if sender.isSelected == true {
            UserDefaults.standard.set("\(sender.currentTitle!)", forKey: "gender")
        }
        print(sender.currentTitle!)
    }

    @IBAction func buttonT(_ sender: UIButton) {
        if nameTextField.text != "" {
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        }
        
        let selectedAgePicker = ageNumbers[agePicker.selectedRow(inComponent: (0))]
        UserDefaults.standard.set(selectedAgePicker, forKey: "age")
        
        print("save")
        print(UserDefaults.standard.object(forKey: "name")!)
        print(UserDefaults.standard.object(forKey: "gender")!)
        print(UserDefaults.standard.object(forKey: "age")!)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ageNumbers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(ageNumbers[row])"
    }
}

