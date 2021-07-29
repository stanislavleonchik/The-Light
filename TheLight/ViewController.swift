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
        if isTurnOn == 8 {
            isTurnOn = 0
        }
        isTurnOn += 1
    }
    
    fileprivate func updateUI() {
        switch isTurnOn {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .orange
        case 3:
            view.backgroundColor = .yellow
        case 4:
            view.backgroundColor = .green
        case 5:
            view.backgroundColor = .blue
        case 6:
            view.backgroundColor = .cyan
        case 7:
            view.backgroundColor = .purple
        default:
            view.backgroundColor = .white
        }
    }
}

