//
//  MyNewViewController.swift
//  HelloAlert
//
//  Created by 申潤五 on 2019/11/30.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class MyNewViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var callBack:((String)->())? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func callBack(_ sender: Any) {
        callBack?(textField.text ?? "nothing")
    }
    
}
