//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Kenneth Debruyn on 14/12/16.
//  Copyright © 2016 kN3TT3R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    // MARK: - Global Variables & Constants
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    // MARK: - Overridden Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - IBActions
    @IBAction func gotoNextElement(_ sender: UIButton) {
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        
    }
    
    // MARK: Homemade Functions
    
}

