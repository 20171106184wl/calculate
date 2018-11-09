//
//  ViewController.swift
//  calculate
//
//  Created by s20171106184 on 2018/11/2.
//  Copyright © 2018 s20171106184. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UITextField!
    var temp:Double = 0
    var flag = 0
    @IBAction func botton0(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func botton1(_ sender: Any) {
        result.text = result.text! + "1"
    }
    @IBAction func botton2(_ sender: Any) {
        result.text = result.text! + "2"
    }
    @IBAction func botton3(_ sender: Any) {
        result.text = result.text! + "3"
    }
    @IBAction func botton4(_ sender: Any) {
        result.text = result.text! + "4"
    }
    @IBAction func botton5(_ sender: Any) {
        result.text = result.text! + "5"
    }
    @IBAction func botton6(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func botton7(_ sender: Any) {
        result.text = result.text! + "7"
    }
    @IBAction func botton8(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func botton9(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBAction func change(_ sender: Any) {
        if result.text==""{
            result.text = result.text! + "-"
        }
    }
    @IBAction func dot(_ sender: Any) {
        result.text = result.text! + "."
    }
    @IBAction func bottonAC(_ sender: Any) {
        result.text = ""
    }
    @IBAction func add(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        flag = 1
    }
    @IBAction func bottonDEL(_ sender: Any) {
        var tmp: String = result.text!
        let j: Int = tmp.characters.count - 1
        if tmp == ""{
        }
        else{
            tmp = tmp.substring(to: tmp.index(tmp.startIndex, offsetBy: j))
            result.text = tmp
        }
        
    }
    @IBAction func minus(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        flag = 2
    }
    @IBAction func mutily(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        flag = 3
    }
    @IBAction func divide(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        flag = 4
    }
    @IBAction func results(_ sender: Any) {
        if flag == 1{
            temp = temp + Double(result.text!)!
        }
        if flag == 2{
            temp = temp - Double(result.text!)!
        }
        if flag == 3{
            temp = temp * Double(result.text!)!
        }
        if flag == 4{
            temp = temp / Double(result.text!)!
        }
        result.text = "\(temp)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
