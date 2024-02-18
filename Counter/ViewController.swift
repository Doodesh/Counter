//
//  ViewController.swift
//  Counter
//
//  Created by DOODESH . on 18.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var istoriya: UITextView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var sbros: UIButton!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func minus(_ sender: UIButton) {
        if count > 0 {
            count -= 1
            label.text = "\(count)"
            istoriya.text += "\n\(Date()) \(count)"
        } else if count == 0 {
            istoriya.text += "\n\(Date()) попытка уменьшить значение счётчика ниже 0"
        }
    }
    @IBAction func plus(_ sender: UIButton) {
        count += 1
        label.text = "\(count)"
        istoriya.text += "\n\(Date()) \(count)"
    }
    @IBAction func sbros(_ sender: UIButton) {
        if count > 0  {
            count = 0
            label.text = "\(count)"
            istoriya.text += "\n\(Date()) Значение сброшено"
        }
    }
}
    
    

