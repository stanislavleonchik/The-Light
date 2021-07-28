//
//  ViewController.swift
//  TheLight
//
//  Created by Stanislav Leonchik on /297/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var isTurnOn = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPressedButton(_ sender: Any) {
        print(#line, #function)
        isTurnOn.toggle()
        updateUI()
        
    }
    
    fileprivate func updateUI() {
        view.backgroundColor = isTurnOn ? .white : .black
    }
}

