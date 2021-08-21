//
//  ViewController.swift
//  TheLight
//
//  Created by Stanislav Leonchik on /297/21.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    
    var traficColor = 0
    var torchIsOn = false
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        traficColor += 1
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateUI()
        if traficColor == 3 {
            traficColor = 0
        }
        traficColor += 1
    }
    
    @IBAction func torchStation(_ sender: Any) {
        torchIsOn.toggle()
        switchTorch(isOn: torchIsOn)
    }
    fileprivate func updateUI() {
        switch traficColor {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .yellow
        case 2:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .red
        }
    }
    
    fileprivate func switchTorch(isOn: Bool) {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else {
            return
        }
        
        guard device.hasTorch else {
            return
        }
        do {
            try device.lockForConfiguration()
            
            if (!isOn) {device.torchMode = AVCaptureDevice.TorchMode.off}
            else {
                do {
                    try device.setTorchModeOn(level: 1.0)
                }
                catch {
                    print(error)
                }
            }
            device.unlockForConfiguration()
        }
        catch {
            print(error)
        }
    }
}

