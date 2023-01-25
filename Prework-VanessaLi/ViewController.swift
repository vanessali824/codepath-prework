//
//  ViewController.swift
//  Prework-VanessaLi
//
//  Created by Vanessa Li on 1/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var changePetsNumStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    @IBOutlet weak var yrSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
       numOfPetsLabel.text = "\(Int(sender.value))"
   }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Let's us chose the title we have selected from the segmented control
        let year = yrSegmentedControl.titleForSegment(at: yrSegmentedControl.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "I am \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolTextField.text!). I am currently in my \(year!) year and I own \(numOfPetsLabel.text!) cats. It is \(morePetsSwitch.isOn) that I want additional pets."
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Beautiful Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

