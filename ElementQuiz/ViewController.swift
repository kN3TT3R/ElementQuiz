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
        updateElement()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    //MARK: - IBActions
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    
    // MARK: Homemade Functions
    
    /*  Sets the answer label to "?" and creates and sets the correct image.    */
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
            /*  Creates a new UIImage instance by looking in the asset catalog
                for an image with a matching name   */
        let image = UIImage(named: elementName)
            /*  Sets the image of the image view to the newly created image instance    */
        imageView.image = image
    }
}

