//
//  Brain.swift
//  Project2
//
//  Created by Dyana Monroy on 3/11/19.
//  Copyright © 2019 Dyana Monroy. All rights reserved.
//

import Foundation
class Brain{
   /* var result : Double{
        get{
            return ans!
        }
    }*/
    
    
    var display: String
    var firstn : Double?
    var secondn : Double?
    var istyping = false
    var operation : String
//var operation: String
    var ans : Double?
    /*var ans: String{
        get{
            if operation == "="{
                if operation == "+"{
                    return String(num1 + num2)
                }
            }
        }
    }*/
    init() {
        display = "0"
       firstn = 0.0
       secondn = 0.0
       operation = ""
        ans = 0.0
       istyping = false
        decim = false
    }
    
    func evaluate(opertor: String){
    
    
    istyping = false
    firstn = Double(display)
    operation = opertor
    if operation == "%"{
    display = String(firstn! * 0.01)
    
    // textlabel.text = "\(a)"
    }
    else if operation == "+/-" {
    display = String(firstn! * -1)
    }
   
    }
    
    func equal(equalsign: String){
       
         istyping = false
       
       // if operation == "="{
             secondn = Double(display)
        if operation == "+" {
            display = String(firstn! + secondn!)
        }
        else if operation == "-" {
            display = String(firstn! - secondn!)
        }
        else if operation == "X"{
            display = String(firstn! * secondn!)
        }
        else if operation == "/"  {
            if secondn! == 0 && firstn! != 0{
                display = String("Undefined")
              /*  let alert = UIAlertController (title: "Error", message:"Can't divide by zero", preferredStyle: .alert)
                let cancel = UIAlertAction (title: "Cancel", style: .cancel, handler: nil)
                alert.addAction(cancel)
                present(alert, animated: true)*/
                
            }
        
                
            else{
                display = String(firstn! / secondn!)
            }
            
        }
    
            //}
            
        
    
    }
    
    func clearnum(num: String){
        // if operation == "C" {
         
         
         display = ""
         firstn! = 0
         secondn! = 0
         operation = ""
         istyping = false
         //ans = 0;
     //    }
    }
    
    var decim = false

    
    func appendDisplay(value: String){
       
              //istyping = false
         if istyping {
               display += value
     
         
        }
      else {
           
            
            display = value
            istyping = true
          //  dec = true
        }
  
    
}
   
    func decimal(dec : String){
        if istyping{
            if display.contains(".") == false {
                
                display =  display + "."
                 decim  = false
                
                
            }
        }
        
        
        else {
            
            display = "0"
            istyping = true
            decim = true
        }
    }

}

