//
//  ViewController.swift
//  NewPickerExample
//
//  Created by R J Herrema on 18/11/2019.
//  Copyright © 2019 R J Herrema. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var colors = ["red", "green", "yellow", "purple", "orange", "pink", "lavender", "aqua", "rose", "rust"]
    var types = ["rose", "violet", "lily", "peony", "carnation", "daffodil", "iris", "orchid", "azalea", "begonia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        flowerChoice.delegate = self
        flowerChoice.dataSource = self
    }
    
    // number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // number of rows per column
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return colors.count
        } else {
            return types.count
        }
    }
    
    // updates the picker display
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return colors[row]
        } else {
            return types[row]
        }
    }
    
    // the selected row number is accessible as an integer
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let color = colors[pickerView.selectedRow(inComponent: 0)]
        let type = types[pickerView.selectedRow(inComponent: 1)]
                choiceDisplay.text = color + " " + type
    }
    
    
    @IBOutlet weak var flowerChoice: UIPickerView!
    
    @IBOutlet weak var choiceDisplay: UILabel!
}

