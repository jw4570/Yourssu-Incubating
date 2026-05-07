//
//  ViewController.swift
//  Calculator
//
//  Created by 이주원 on 5/6/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setTextFieldStyle(firstNum)
        setTextFieldStyle(secondNum)
    }
    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondNum: UITextField!
    @IBOutlet weak var outputBox: UILabel!
    
    func setTextFieldStyle(_ textField: UITextField) {
        textField.borderStyle = .none
        
        textField.backgroundColor = .systemBackground
        textField.layer.cornerRadius = 12
        
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.1
        textField.layer.shadowOffset = CGSize(width: 0, height: 4)
        textField.layer.shadowRadius = 10
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }

    @IBAction func ClickButton(_ sender: UIButton, forEvent event: UIEvent) {
        
        if firstNum.text == nil || firstNum.text == "" || secondNum.text == nil || secondNum.text == "" {
            outputBox.text = "숫자를 입력하세요"
            return
        }
        let num1 = Double(firstNum.text!) ?? 0.0
        let num2 = Double(secondNum.text!) ?? 0.0
        
        var result = 0.0
        var operation: String = ""
        
        switch sender.configuration?.title {
        case "더하기":
            result = num1 + num2
            operation = "+"
        case "빼기":
            result = num1 - num2
            operation = "-"
        case "곱하기":
            result = num1 * num2
            operation = "*"
        case "나누기":
            if num2 != 0 {
                result = num1 / num2
                operation = "/"
            } else {
                outputBox.text = "0으로 나눌 수 없습니다"
                return
            }
        default:
            break
        }
        outputBox.text = "\(String(format: "%g", num1)) \(operation) \(String(format: "%g", num2)) = \(String(format: "%g", result))"
    }
}

