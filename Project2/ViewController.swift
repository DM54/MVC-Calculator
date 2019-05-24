//
//  ViewController.swift
//  Project2
//
//  Created by Dyana Monroy on 3/11/19.
//  Copyright © 2019 Dyana Monroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textlabel: UILabel!
    var mybrain : Brain = Brain()
    @IBOutlet weak var dec: UIButton!
    var istyping = false
    
    @IBAction func Numbers(_ sender: UIButton) {
        if let strn = sender.titleLabel?.text{
         mybrain.appendDisplay(value: strn)
        textlabel.text = mybrain.display
    }
    }
    
   /* var displayvalue : Double {
        get {
            return Double(textlabel.text!)!
        }
        set{
            textlabel.text = String(newValue)
        }
    }*/
    
    @IBAction func operation(_ sender: UIButton) {
        
        if  let btntext = sender.titleLabel?.text{
           
            mybrain.evaluate(opertor: btntext)
            
            textlabel.text = mybrain.display
          
        }

    }

   @IBAction func clear(_ sender: UIButton) {
    if let btnclear = sender.titleLabel?.text{
        mybrain.clearnum(num: btnclear)
        textlabel.text = mybrain.display
    }
    }
    
    
    @IBAction func Equal(_ sender: UIButton) {
        if let btnequal = sender.titleLabel?.text{
            mybrain.equal(equalsign: btnequal)
            textlabel.text = mybrain.display
        }
    }
    
   
    
    @IBAction func Decimals(_ sender: UIButton) {
        if let btndec = sender.titleLabel?.text{
            mybrain.decimal(dec: btndec)
            textlabel.text = mybrain.display
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

