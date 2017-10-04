//
//  TestViewController.swift
//  Trackme
//
//  Created by Roger Villarreal on 10/2/17.
//  Copyright © 2017 Roger Villarreal. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var test: Test? = nil
    
    // MARK: - Properties
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var testNameTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if test != nil {
            testNameTextField.text = test?.name
            resultTextField.text = String(describing: test!.value)
            addButton.setTitle("Update", for: .normal)
        } else {
            deleteButton.isHidden = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Actions
    @IBAction func addButtonTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if test != nil {
            test?.name = testNameTextField.text
            if let value = Double(resultTextField.text!) {
                test?.value = value
            } else {
                test?.value = 0.0
            }
            
        } else {
            let test = Test(context: context)
            test.name = testNameTextField.text
            if let value = Double(resultTextField.text!) {
                test.value = value
            } else {
                test.value = 0.0
            }
        }
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(test!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    
}

