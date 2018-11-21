//
//  ViewController.swift
//  calculate
//
//  Created by s20171106184 on 2018/11/2.
//  Copyright © 2018 s20171106184. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var show1: UITextField!
    @IBOutlet weak var result: UITextField!
    var temp:Double = 0
    var flag = 0
    var num:Double = 0
    @IBAction func botton0(_ sender: Any) {
        result.text = result.text! + "0"
        show1.text = show1.text! + "0"
    }
    @IBAction func botton1(_ sender: Any) {
        result.text = result.text! + "1"
        show1.text = show1.text! + "1"
    }
    @IBAction func botton2(_ sender: Any) {
        result.text = result.text! + "2"
        show1.text = show1.text! + "2"
    }
    @IBAction func botton3(_ sender: Any) {
        result.text = result.text! + "3"
        show1.text = show1.text! + "3"
    }
    @IBAction func botton4(_ sender: Any) {
        result.text = result.text! + "4"
        show1.text = show1.text! + "4"
    }
    @IBAction func botton5(_ sender: Any) {
        result.text = result.text! + "5"
        show1.text = show1.text! + "5"
    }
    @IBAction func botton6(_ sender: Any) {
        result.text = result.text! + "6"
        show1.text = show1.text! + "6"
    }
    @IBAction func botton7(_ sender: Any) {
        result.text = result.text! + "7"
        show1.text = show1.text! + "7"
    }
    @IBAction func botton8(_ sender: Any) {
        result.text = result.text! + "8"
        show1.text = show1.text! + "8"
    }
    @IBAction func botton9(_ sender: Any) {
        result.text = result.text! + "9"
        show1.text = show1.text! + "9"
    }
    @IBAction func change(_ sender: Any) {
        if result.text==""{
            result.text = result.text! + "-"
            show1.text = show1.text! + "-"
        }
    }
    @IBAction func dot(_ sender: Any) {
        result.text = result.text! + "."
        show1.text = show1.text! + "."
    }
    @IBAction func bottonAC(_ sender: Any) {
        result.text = ""
        show1.text = ""
        temp = 0
        num = 0
        flag = 0
    }
    @IBAction func add(_ sender: Any) {
        if result.text! == ""{
        }
        else{
            num = Double(result.text!)!
        }
        if flag == 0{
            temp = num
        }
        if flag == 1{
            temp = temp + num
        }
        if flag == 2{
            temp = temp - num
        }
        if flag == 3{
            temp = temp * num
        }
        if flag == 4{
            temp = temp / num
        }
        result.text = ""
        flag = 1
        show1.text = show1.text! + "+"
    }
    @IBAction func bottonDEL(_ sender: Any) {
        var tmp: String = result.text!
        var tmp1: String = show1.text!
        let j: Int = tmp.characters.count - 1
        let i: Int = tmp1.characters.count - 1
        if tmp == ""{
        }
        else{
            tmp = tmp.substring(to: tmp.index(tmp.startIndex, offsetBy: j))
            result.text = tmp
        }
        if tmp1 == ""{
        }
        else{
            tmp1 = tmp1.substring(to: tmp1.index(tmp1.startIndex, offsetBy: i))
            show1.text = tmp1
        }
        temp = 0
       // num = 0
        flag = 0
    }
    @IBAction func minus(_ sender: Any) {
        if result.text! == ""{
        }
        else{
            num = Double(result.text!)!
        }
        if flag == 0{
            temp = num
            //flag1 = 1
        }
        if flag == 1{
            temp = temp + num
        }
        if flag == 2{
            temp = temp - num
        }
        if flag == 3{
            temp = temp * num
        }
        if flag == 4{
            temp = temp / num
        }
        result.text = ""
        flag = 2
        show1.text = show1.text! + "-"
    }
    @IBAction func mutily(_ sender: Any) {
        if result.text! == ""{
        }
        else{
            num = Double(result.text!)!
        }
        if flag == 0{
            temp = num
        }
        if flag == 1{
            temp = temp + num
        }
        if flag == 2{
            temp = temp - num
        }
        if flag == 3{
            temp = temp * num
        }
        if flag == 4{
            temp = temp / num
        }
        result.text = ""
        flag = 3
        show1.text = show1.text! + "*"
    }
    @IBAction func divide(_ sender: Any) {
        if result.text! == ""{
        }
        else{
            num = Double(result.text!)!
        }
        if flag == 0{
            temp = num
        }
        if flag == 1{
            temp = temp + num
        }
        if flag == 2{
            temp = temp - num
        }
        if flag == 3{
            temp = temp * num
        }
        if flag == 4{
            temp = temp / num
        }
        result.text = ""
        flag = 4
        show1.text = show1.text! + "/"
    }
    @IBAction func results(_ sender: Any) {
        show1.text = show1.text! + "="
        if result.text! == ""{
        }
        else{
            
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
        }
        result.text = "\(temp)"
        show1.text = show1.text! + "\(temp)"
        temp = 0
        num = 0
        flag = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
