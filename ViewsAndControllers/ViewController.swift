//
//  ViewController.swift
//  ViewsAndControllers
//
//  Created by Agustin Carbajal on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myButton.backgroundColor = .green
        myButton.tintColor = .black
    }


    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
}

