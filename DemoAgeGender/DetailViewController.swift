//
//  DetailViewController.swift
//  DemoAgeGender
//
//  Created by Đừng xóa on 6/21/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
//    var name: String?
//    var gender: String?
//    var age: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = UserDefaults.standard.object(forKey: "name") {
            nameLabel.text = "\(name)"
        }
        if let gender = UserDefaults.standard.object(forKey: "gender") {
            genderLabel.text = "\(gender)"
        }
        if let age = UserDefaults.standard.object(forKey: "age") {
            ageLabel.text = "\(age)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
