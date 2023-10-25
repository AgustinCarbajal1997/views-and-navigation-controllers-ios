//
//  ViewController.swift
//  ViewsAndControllers
//
//  Created by Agustin Carbajal on 24/10/2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        myButton.backgroundColor = .green
        myButton.tintColor = .black
        
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!)) // el ! es como un optional chaining que lo que hace es abortar la ejecucion si contiene un valor nil, corta la ejecucion
        
    }


    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
}

