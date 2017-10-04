//
//  TestDisplayViewController.swift
//  TrackMe
//
//  Created by Roger Villarreal on 10/2/17.
//  Copyright © 2017 Roger Villarreal. All rights reserved.
//

import UIKit

class TestDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tests: [Test] = []
    
    @IBOutlet weak var testTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.delegate = self
        testTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // view inside cointainer
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // fetch objects and send them to the tests array global variable
        do {
            tests = try context.fetch(Test.fetchRequest())
            testTableView.reloadData()
        } catch  {}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // iterate through the test keys and set the text label
        // iterate throught the keys and set the detail text
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabResultCell", for: indexPath)
        let test = tests[indexPath.row]
        cell.textLabel?.text = test.name
        cell.detailTextLabel?.text = test.value.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let test = tests[indexPath.row]
        performSegue(withIdentifier: "addSegue", sender: test)
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        if segue.identifier == "addSegue",
            let nextVC = segue.destination as? TestViewController {
                nextVC.delegate = self
                nextVC.test = sender as? Test
        }
     }
    
}

extension TestDisplayViewController: TestViewControllerDelegate {
    func didFinish(_ testViewController: TestViewController) {
        navigationController?.popViewController(animated: true)
    }
}
