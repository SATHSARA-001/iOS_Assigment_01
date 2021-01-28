//
//  ViewController.swift
//  plex
//
//  Created by Sathsara Maduranga on 2021-01-24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appleLoginView: UIView!
    @IBOutlet weak var facebookLoginView: UIView!
    @IBOutlet weak var googleLoginView: UIView!
    @IBOutlet weak var emailLoginView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setGradientBackground()
        setUI()
    }
    
    func setUI(){
        
        appleLoginView.layer.cornerRadius = 10
        facebookLoginView.layer.cornerRadius = 10
        googleLoginView.layer.cornerRadius = 10
        emailLoginView.layer.cornerRadius = 10
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 36.0/255.0, green: 41.0/255.0, blue: 47.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 117.0/255.0, green: 122.0/255.0, blue: 128.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
}

