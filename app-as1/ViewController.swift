//
//  ViewController.swift
//  app-as1
//
//  Created by allen on 2016/3/21.
//  Copyright © 2016年 allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstnum:String = ""
    var secondnum:String = ""
    var operat =  ""
    var istyping = false
    var ispoint = true
    var  intuse = false
    var firstready = false
    var secondready = false
  

    @IBAction func caltap(sender: AnyObject) {
        ispoint = true
        if sender.currentTitle != "="
        {
            if secondready {
                secondnum = screen.text!
                count()
                operat = sender.currentTitle!!
                secondready = false
                istyping = false
               
            }
            else{
            operat = sender.currentTitle!!
            firstnum = screen.text!
            firstready = true
            istyping = false
            }
        }
        else if sender.currentTitle == "=" {
            if secondready {
                secondnum = screen.text!
           secondready = false
            }
            count()
        }
        
    ispoint = false
    } //caltap
  
    func check (a:Double){
     
        
            if  a != Double ( Int(a) ) {
            intuse = false
        }
        else {
            intuse = true
        }
        
    }
  
    func count () {
        var result:Double = 0
            if operat == "+" {
                
                result = Double(firstnum)! + Double(secondnum)!
                firstnum = String(result)
                check (result)
                if intuse {
                    screen.text = String( Int(result) )
                }
                else {
                    screen.text = String(result)
                    
                }
            }
                
            else if operat == "-"
                
            {
                result = Double(firstnum)! - Double(secondnum)!
                firstnum = String(result)
                check (result)
                if intuse {
                    screen.text = String( Int(result) )
                }
                else {
                    screen.text = String(result)
                    
                }
            }
            else if operat == "*"
            {
                result = Double(firstnum)! * Double(secondnum)!
                firstnum = String(result)
                check (result)
                if intuse {
                    screen.text = String( Int(result) )
                }
                else {
                    screen.text = String(result)
                    
                }
                
                
            }
            else if operat == "/"
            {
                result = Double(firstnum)! / Double(secondnum)!
                firstnum = String(result)
                check (result)
                if intuse {
                    screen.text = String( Int(result) )
                }
                else {
                    screen.text = String(result)
                    
                }
                
            }
    
    }
    
    @IBAction func numtapped (sender: AnyObject) { //number
 
        let number = sender.currentTitle ;
        
        
        if istyping {
            if screen.text == "0" {
                istyping = false
            }
            else {
            screen.text = screen.text! + number!!
         //   ispoint = true
            }
            
        }
        else{
            
            screen.text = number ;
            ispoint = true
            
            istyping = true
             if (firstready == true ){
                secondready = true;
                }
            
        }
    }
    
    @IBAction func ACcon(sender: AnyObject) {
  if sender.currentTitle == "AC"
        {
            screen.text = "0"
            ispoint = true
        //     cal = false
        firstnum = ""
            secondnum = ""
          istyping = false
            operat = ""
        //    once = true
            firstready = false
             secondready = false
           
  }
        else if sender.currentTitle == "+/-"
  {
    var ch:Double = 0
    ch = Double (screen.text!)!;
    check (ch)
    if intuse {
        screen.text = String( Int(-ch) )
    }
    else {
        screen.text = String(-ch)
        
    }
   
    
  }
    
        else if sender.currentTitle == "."
  {
    if ispoint {
        screen.text = screen.text! + "."
       istyping = true
   
    }
    ispoint = false ;
    
    
        }
    else if sender.currentTitle == "%"
        {
            var ah:Double = 0
            ah = Double (screen.text!)!;
            ah = ah / 100 ;
            
            check (ah)
            if intuse {
                screen.text = String( Int(ah) )
                ispoint = true

            }
            else {
                screen.text = String(ah)
                ispoint = false

                
            }
                      }
    }
    

    
@IBOutlet weak var screen: UILabel!
 
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


