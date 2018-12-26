//
//  ViewController.swift
//  calculate
//
//  Created by s20171106184 on 2018/11/2.
//  Copyright © 2018 s20171106184. All rights reserved.
//

import UIKit
class number
{
    var top:Int = -1
    var num1 = [Double](repeating: 0, count: 100)
    func push1(sub4:Double){
        top = top+1
        num1[top]=sub4
        
    }
    func pop1()->(Bool,nums:Double){
        var nums:Double = 0
        if top > -1{
            nums = num1[top]
            top = top-1
            return (true,nums)
        }
        else{
            return (false,nums)
        }
    }
}
class signal
{
    var top:Int = -1
    var sig = [Int](repeating: 0, count: 100)
    func push1(sigs:Int){
        top = top+1
        sig[top]=sigs
        
    }
    func pop1()->(Bool,sigs:Int){
        var sigs:Int = 0
        var b:Bool = true
        if top > -1{
            sigs = sig[top]
            top = top-1
            return (b,sigs)
        }
        else{
            b = false
            return (b,sigs)
            
        }
    }
}
class ViewController: UIViewController {
    @IBOutlet weak var show1: UITextField!
    @IBOutlet weak var result: UITextField!
    //var temp:Double = 0
    //var flag = 0
    //var num:Double = 0
    var num = number()
    var sign = signal()
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
    @IBAction func after(_ sender: Any) {
        result.text = result.text! + "("
        show1.text = show1.text! + "("
    }
    @IBAction func later(_ sender: Any) {
        result.text = result.text! + ")"
        show1.text = show1.text! + ")"
    }
    @IBAction func bottonAC(_ sender: Any) {
        result.text = ""
        show1.text = ""
        /*temp = 0
        num = 0
        flag = 0*/
    }
    @IBAction func add(_ sender: Any) {
        /*if result.text! == ""{
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
        }*/
        result.text = ""
        //flag = 1
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
        //temp = 0
       // num = 0
        //flag = 0
    }
    @IBAction func minus(_ sender: Any) {
        /*if result.text! == ""{
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
        }*/
        result.text = ""
        //flag = 2
        show1.text = show1.text! + "-"
    }
    @IBAction func mutily(_ sender: Any) {
        /*if result.text! == ""{
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
        }*/
        result.text = ""
        //flag = 3
        show1.text = show1.text! + "*"
    }
    @IBAction func divide(_ sender: Any) {
        /*if result.text! == ""{
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
        }*/
        result.text = ""
        //flag = 4
        show1.text = show1.text! + "/"
    }
    @IBAction func results(_ sender: Any) {
        show1.text = show1.text! + "="
        var tmp: String = show1.text!
        var count = tmp.characters.count
        var frnum:Int = 0
        var afnum:Int = 0
        var index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
        var index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
        var sub4 = tmp[index3..<index4]
        var cnum1: Double = 0
        var op1:Double = 0
        var op2:Double = 0
        var op3:Double = 0
        var op4:Double = 0
        var sig1:Int = 0
        var sig:Int = 0
        var flag:Int = 1
        for c in tmp.characters {
            if c == "+"{
                if flag == 1{
                    index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
                    index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
                    sub4 = tmp[index3..<index4]
                    if sub4 == ""{
                        num.push1(sub4:0)
                    }
                    else{
                        cnum1 = Double(sub4)!
                        num.push1(sub4:cnum1)
                    }
                }
                else
                {
                    flag = 1
                }
                frnum = afnum + 1
                sig = 1
                while sign.top > -2{
                if sign.top == -1{
                    sign.push1(sigs: sig)
                    break
                }
                else if sign.sig[sign.top] > sig{
                    op2 = num.pop1().nums
                    op1 = num.pop1().nums
                    sig1 = sign.pop1().sigs
                    if sig1 == 2{
                        op3 = op1 - op2
                    }
                    if sig1 == 3{
                        op3 = op1 * op2
                    }
                    if sig1 == 4{
                        op3 = op1 / op2
                    }
                    num.push1(sub4: op3)
                    //sign.push1(sigs: sig)
                }
                else{
                    sign.push1(sigs: sig)
                    break
                }
                }
            }
            if c == "-"{
                if flag == 1{
                    index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
                    index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
                    sub4 = tmp[index3..<index4]
                    if sub4 == ""{
                        num.push1(sub4:0)
                    }
                    else{
                        cnum1 = Double(sub4)!
                        num.push1(sub4:cnum1)
                    }
                }
                else
                {
                    flag = 1
                }
                frnum = afnum + 1
                sig = 2
                while sign.top > -2{
                if sign.top == -1{
                    sign.push1(sigs: sig)
                    break
                }
                else if sign.sig[sign.top] >= sig{
                    op2 = num.pop1().nums
                    op1 = num.pop1().nums
                    sig1 = sign.pop1().sigs
                    if sig1 == 2{
                        op3 = op1 - op2
                    }
                    if sig1 == 3{
                        op3 = op1 * op2
                    }
                    if sig1 == 4{
                        op3 = op1 / op2
                    }
                    num.push1(sub4: op3)
                    //sign.push1(sigs: sig)
                }
                else{
                    sign.push1(sigs: sig)
                    break
                }
                }
            }
            if c == "*"{
                if flag == 1{
                    index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
                    index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
                    sub4 = tmp[index3..<index4]
                    if sub4 == ""{
                        num.push1(sub4:0)
                    }
                    else{
                        cnum1 = Double(sub4)!
                        num.push1(sub4:cnum1)
                    }
                }
                else
                {
                    flag = 1
                }
                frnum = afnum + 1
                sig = 3
                while sign.top > -2{
                if sign.top == -1{
                    sign.push1(sigs: sig)
                    break
                }
                else if sign.sig[sign.top] > sig{
                    op2 = num.pop1().nums
                    op1 = num.pop1().nums
                    sig1 = sign.pop1().sigs
                    if sig1 == 4{
                        op3 = op1 / op2
                    }
                    num.push1(sub4: op3)
                    //sign.push1(sigs: sig)
                }
                else{
                    sign.push1(sigs: sig)
                    break
                }
                }
            }
            if c == "/"{
                if flag == 1{
                    index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
                    index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
                    sub4 = tmp[index3..<index4]
                    if sub4 == ""{
                        num.push1(sub4:0)
                    }
                    else{
                        cnum1 = Double(sub4)!
                        num.push1(sub4:cnum1)
                    }
                }
                else
                {
                    flag = 1
                }
                frnum = afnum + 1
                sig = 4
                //sign.push1(sigs: sig)
                while sign.top > -2{
                if sign.top == -1
                {
                    sign.push1(sigs: sig)
                    break
                }
                else if sign.sig[sign.top] == sig{
                op2 = num.pop1().nums
                op1 = num.pop1().nums
                sig1 = sign.pop1().sigs
                if sig1 == 4{
                    op3 = op1 / op2
                    }
                    num.push1(sub4: op3)
                    //sign.push1(sigs: sig)
                }
                else{
                    sign.push1(sigs: sig)
                    break
                    }
                }
            }
            if c == "("{
                frnum = afnum + 1
                sig = -2
                sign.push1(sigs: sig)
            }
            if c == ")"{
                index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
                index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
                sub4 = tmp[index3..<index4]
                frnum = afnum + 1
                if sub4 == ""{
                    num.push1(sub4:0)
                }
                else{
                    cnum1 = Double(sub4)!
                    num.push1(sub4:cnum1)
                }
                //sig = -4
                if num.top > -1 && sign.top > -1{
                while sign.sig[sign.top] != -2 {
                    op2 = num.pop1().nums
                    op1 = num.pop1().nums
                    sig1 = sign.pop1().sigs
                    if sig1 == 1{
                        op3 = op1 + op2
                    }
                    if sig1 == 2{
                        op3 = op1 - op2
                    }
                    if sig1 == 3{
                        op3 = op1 * op2
                    }
                    if sig1 == 4{
                        op3 = op1 / op2
                    }
                    num.push1(sub4: op3)
                }
                sign.pop1()
                }
                flag = 0
            }
            if c == "="{
                if flag == 1{
                    index3 = tmp.index(tmp.startIndex, offsetBy: frnum)
                    index4 = tmp.index(tmp.startIndex, offsetBy: afnum)
                    sub4 = tmp[index3..<index4]
                    if sub4 == "" {
                        num.push1(sub4:0)
                    }
                    else if sub4 == "." {
                        num.push1(sub4:0)
                    }
                    else{
                        cnum1 = Double(sub4)!
                        num.push1(sub4:cnum1)
                    }
                }
                else
                {
                    flag = 1
                }
                frnum = afnum + 1
                while num.top > -1 && sign.top > -1{
                    op2 = num.pop1().nums
                    op1 = num.pop1().nums
                    sig1 = sign.pop1().sigs
                    if sig1 == 1{
                        op3 = op1 + op2
                    }
                    if sig1 == 2{
                        op3 = op1 - op2
                    }
                    if sig1 == 3{
                        op3 = op1 * op2
                    }
                    if sig1 == 4{
                        op3 = op1 / op2
                    }
                    num.push1(sub4: op3)
                }
            }
            count = count - 1
            afnum = afnum + 1
        }
        op4 = num.pop1().nums
        result.text = "\(op4)"
        show1.text = show1.text! + "\(op4)"
        /*if result.text! == ""{
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
        show1.text = show1.text! + "\(temp)"*/
        //temp = 0
        //num = 0
        //flag = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
