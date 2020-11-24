//
//  PopupViewController.swift
//  Pop Ups
//
//  Created by Adwait Barkale on 23/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var dimView: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    
    var popUpInstance: PopupViewController?
    var popUpTitle: String?
    var popUpDescription: String?
    var popUpImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        dimView.backgroundColor = UIColor.black.withAlphaComponent(0.2)

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        lblTitle.text = popUpTitle
        lblDescription.text = popUpDescription
        image.image = popUpImage
        
    }
    
    @IBAction func btnOkTapped(_ sender: UIButton) {
        //Dismiss PopUp
        self.dismiss(animated: false, completion: nil)
        //popUpInstance?.removeFromParent()
    }
    

}
