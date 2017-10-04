//
//  TestViewController.swift
//  Trackme
//
//  Created by Roger Villarreal on 10/2/17.
//  Copyright © 2017 Roger Villarreal. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var test: Test?
    
    // MARK: - Properties
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var testNameTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let test = test {
            testNameTextField.text = test.name
            resultTextField.text = test.value.description
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
            test?.value = Double(resultTextField.text ?? "") ?? 0.0
            
        } else {
            let test = Test(context: context)
            test.name = testNameTextField.text
            test.value = Double(resultTextField.text ?? "") ?? 0.0
        }
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
        defer { navigationController?.popViewController(animated: true) }
        guard let test = test else { return }
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(test)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
}

