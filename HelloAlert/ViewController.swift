//
//  ViewController.swift
//  HelloAlert
//
//  Created by 申潤五 on 2019/11/30.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func action(_ sender: Any) {
        let alertController = UIAlertController(
            title: "請注意",
            message: "看我這兒好嗎？",
            preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            print("OK clicked")
        }
        alertController.addAction(okAction)
        
        let cancelAtion = UIAlertAction(title: "Cancelxxx", style: .cancel) { (alert) in
            print(alert.title)
        }
        alertController.addAction(cancelAtion)
        
        
        present(alertController, animated: true, completion: nil)
        
        
    }
    
    @IBAction func action2(_ sender: Any) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = stroyboard.instantiateViewController(identifier: "myNewVCID") as! MyNewViewController
        nextVC.modalPresentationStyle = .overCurrentContext
        nextVC.callBack = {
            print($0)
        }
        
        
        present(nextVC, animated: true, completion: nil)
    }
}

