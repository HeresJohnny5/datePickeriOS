//
//  ViewController.swift
//  datePickeriOS
//
//  Created by John Erickson on 12/5/18.
//  Copyright © 2018 John Erickson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var dateLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    dateLabel.text = "Choose a date"
  }

  @IBAction func didChangeDate(_ sender: UIDatePicker) {
    let date: Date = sender.date
    let formatter: DateFormatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    
    let dayOfWeek: String = formatter.string(from: date)
    
    dateLabel.text = "The day is a \(dayOfWeek)."
  }
}
