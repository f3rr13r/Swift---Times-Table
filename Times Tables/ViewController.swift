//
//  ViewController.swift
//  Times Tables
//
//  Created by Harry Ferrier on 8/3/16.
//  Copyright © 2016 CASTOVISION LIMITED. All rights reserved.
//

import UIKit


// Declare appropriate delegates and protocols that UITableViews need.
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Hook up IBOutlets for use within ViewController.swift code.
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var timesTableLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    // sliderChangedValue function, observing the UIslider..
    @IBAction func sliderChangedValue(_ sender: AnyObject) {
        
        timesTableLabel.text = "This is the \(Int(slider.value)) times table."
        
        // Reload the data in the tableView whenever there is a change to the slider's value.
        table.reloadData()
        
    }
    
    //** OPTIONAL DATA SOURCE PROTOCOL FUNCTION **//
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    
    
    // *********** COMPLY TO REQUIREMENTS OF UITABLEVIEWDATASOURCE PROTOCOL ************ //
    
    
    
    
    // Hardcode to return 50 rows.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
        
    }
    
    // Cell for row at index Path function...
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // Create cell.
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        // Cell's textLabel text value is set to the value of the slider (converted to an Integer value), multiplied by the value of that cell row's indexPath plus 1.
        cell.textLabel?.text = String(Int(slider.value) * (indexPath.row + 1))
        
        // The cell is then returned..
        return cell
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // As slider is set to be in the position of value 1 at the loading of the app, we set the timesTableLabel's text property to include that slider value in our string.
        timesTableLabel.text = "This is the \(Int(slider.value)) times table."
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

