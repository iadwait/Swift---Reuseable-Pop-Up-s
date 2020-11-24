//
//  ViewController.swift
//  Pop Ups
//
//  Created by Adwait Barkale on 23/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShowPopUpTapped(_ sender: UIButton) {
        
        let popUpVC = storyboard?.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        //self.addChild(popUpVC) //Present Crash
        popUpVC.view.frame = .init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        popUpVC.popUpInstance = popUpVC
        popUpVC.popUpTitle = "Wifi Not Available"
        popUpVC.popUpDescription = "Please Reboot your internet connection."
        popUpVC.popUpImage = UIImage(systemName: "wifi")
        //self.view.addSubview(popUpVC.view)
        self.present(popUpVC,animated: false,completion: nil)
        popUpVC.didMove(toParent: self)
    }
    
}

