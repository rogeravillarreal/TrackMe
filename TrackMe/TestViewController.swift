//
//  TestViewController.swift
//  TrackMe
//
//  Created by Roger Villarreal on 10/2/17.
//  Copyright © 2017 Roger Villarreal. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var testResults: [Test] = []
    
    @IBOutlet weak var testTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTableView.delegate = self
        testTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // iterate through the test keys and set the text label
        // iterate throught the keys and set the detail text
        let cell = UITableViewCell()
        let test = testResults[indexPath.row]
        cell.textLabel?.text = String(describing: test.a1c)
        cell.detailTextLabel?.text = "Result of Lab exam"
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
