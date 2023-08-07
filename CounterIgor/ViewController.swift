//
//  ViewController.swift
//  CounterIgor
//
//  Created by  Игорь Килеев on 07.08.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var tableTextView: UITextView!
    var numb = 0
    var textView = UITextView()
    
    
    var history: [String] = []
    var copy: String = " "
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numLabel.text = " 0 "
        tableTextView.text = "История изменений: "
        copy = tableTextView.text
        history.append(copy)
        print(history.reversed().joined(separator: "\n"))
        
    }

    
    @IBAction func buttonDidTap(_ sender: Any) {
        numb += 1
        numLabel.text = "Значение счетчика: \(numb)"
        print(tableTextView.text = "[\(Date().description)]: Значение изменено на + 1")
        copy = tableTextView.text
        history.append(copy)
        
        print(tableTextView.text = "\(history.reversed().joined(separator: "\n"))")
        
        
    }
    
    @IBAction func buttonDidTapMinus(_ sender: UIButton)  {
        if numb > 0 {
            numb -= 1
            numLabel.text = "Значение счетчика: \(numb )"
            print(tableTextView.text = "[\(Date().description)]: Значение изменено на - 1")
            copy = tableTextView.text
            history.append(copy)
            print(tableTextView.text = "\(history.reversed().joined(separator: "\n"))")
        } else {
            numb = 0
            print(tableTextView.text = "[\(Date().description)]: Попытка уменшить значение счетчика ниже 0")
            copy = tableTextView.text
            history.append(copy)
           
            print(tableTextView.text = "\(history.reversed().joined(separator: "\n"))")
        }
        
        
    }
    
    @IBAction func resetDidTap() {
        if numb > 0 {
            numb = 0
            numLabel.text = "Значение счетчика: \(numb)"
            print(tableTextView.text = "[\(Date().description)]: Значение сброшено")
            copy = tableTextView.text
            history.append(copy)
           
            print(tableTextView.text = "\(history.reversed().joined(separator: "\n"))")
        }
    }
    
  
}

