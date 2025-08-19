//
//  ViewController.swift
//  LAB0
//
//  Created by Haya Alfakieh on 8/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var yearSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
   

    @IBAction func introduceSelfDidTapped(_ sender: Any) {
        // Let's us chose the title we have selected from the segmented control
        let year = yearSegmentedController.titleForSegment(at: yearSegmentedController.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "") and I attend \(schoolTextField.text ?? "").\nI am currently in my \(year ?? "") year and I own \(numberOfPetsLabel.text ?? "0") dogs.\nIt is \(morePetsSwitch.isOn) that I want more pets."


        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

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
