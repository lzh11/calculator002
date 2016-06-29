//
//  ViewController.swift
//  calculator002
//
//  Created by LZH on 16/6/29.
//  Copyright © 2016年 LZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var flag:Int=0;
    var num1:Double=0;
    var num2:Double=0;
    var Equal:Double=0;
    var judgepoint:Bool=false;
    @IBOutlet weak var text: UILabel!
    @IBAction func Button0(sender: AnyObject) {
        if(text.text=="0")
        {
            text.text=(text.text)!+"";
        }
        else
        {
            text.text=(text.text)!+"0";
        }
    }
    @IBAction func Button1(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"1"
            
        }
        else
        {
            text.text=(text.text)!+"1";
        }
    }
    @IBAction func Button2(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"2"
            
        }
        else
        {
            text.text=(text.text)!+"2";
        }
    }
    @IBAction func Button3(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"3"
            
        }
        else
        {
            text.text=(text.text)!+"3";
        }
    }
    @IBAction func Button4(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"4"
            
        }
        else
        {
            text.text=(text.text)!+"4";
        }
    }
    @IBAction func Button5(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"5"
            
        }
        else
        {
            text.text=(text.text)!+"5";
        }
    }
    @IBAction func Button6(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"6"
            
        }
        else
        {
            text.text=(text.text)!+"6";
        }
    }
    @IBAction func Button7(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"7"
            
        }
        else
        {
            text.text=(text.text)!+"7";
        }
    }
    @IBAction func Button8(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"8"
            
        }
        else
        {
            text.text=(text.text)!+"8";
        }
    }
    @IBAction func Button9(sender: AnyObject) {
        if( text.text=="0")
        {
            text.text=""
            text.text=(text.text)!+"9"
            
        }
        else
        {
            text.text=(text.text)!+"9";
        }
    }
    @IBAction func Point(sender: AnyObject) {
        if(judgepoint==false)
        {
            text.text=(text.text)!+".";
            judgepoint=true
        }
    }
    @IBAction func Add(sender: AnyObject) {
        num1=((text.text)! as NSString).doubleValue;
        text.text="";
        flag=1;
        judgepoint=false;
    }
    @IBAction func Jian(sender: AnyObject) {
        num1=((text.text)! as NSString).doubleValue;
        text.text="";
        flag=2;
        judgepoint=false;
    }
    @IBAction func Cheng(sender: AnyObject) {
        num1=((text.text)! as NSString).doubleValue;
        text.text="";
        flag=3;
        judgepoint=false;
    }
    @IBAction func Chu(sender: AnyObject) {
        num1=((text.text)! as NSString).doubleValue;
        text.text="";
        flag=4;
        judgepoint=false;
    }
    @IBAction func Et(sender: AnyObject) {
        var x:Int=0;
        num2=((text.text)! as NSString).doubleValue;
        switch(flag)
        {
        case 1:
            
            Equal=num1+num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                text.text="\(x)"
            }
            else
            {
                text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 2:
            
            Equal=num1-num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                text.text="\(x)"
            }
            else
            {
                text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 3:
            
            Equal=num1*num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                text.text="\(x)"
            }
            else
            {
                text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 4:
            if(num2==0)
            {
                text.text="错误"
            }
            else
            {
                Equal=num1/num2;
                if(Equal%1==0)
                {
                    x=Int(Equal);
                    text.text="\(x)"
                }
                else
                {
                    text.text="\(Equal)"
                }
            }
            judgepoint=true;
            break;
        default:
            break;
            
        }
    }
    @IBAction func Clear(sender: AnyObject) {
        text.text="0";
        num1=0;
        num2=0;
        Equal=0;
        judgepoint=false
    }
    
}

