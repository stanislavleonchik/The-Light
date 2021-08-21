//
//  ViewController.swift
//  TheLight
//
//  Created by Stanislav Leonchik on /297/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var isTurnOn = 0
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        isTurnOn += 1
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateUI()
        if isTurnOn == 3 {
            isTurnOn = 0
        }
        isTurnOn += 1
    }
    
    fileprivate func updateUI() {
        switch isTurnOn {
        case 0:
            view.backgroundColor = .systemRed
        case 1:
            view.backgroundColor = .yellow
        case 2:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .systemRed
        }
    }
}

