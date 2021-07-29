//
//  ViewController.swift
//  TheLight
//
//  Created by Stanislav Leonchik on /297/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var isTurnOn = true
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTurnOn.toggle()
        updateUI()
    }
    
    fileprivate func updateUI() {
        view.backgroundColor = isTurnOn ? .white : .black
    }
}

