//
//  ViewController.swift
//  primeNumber2
//
//  Created by Kristina Bogomolova on 3/1/16.
//  Copyright © 2016 FoxyLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNumber: UITextField!
    
    
    @IBAction func submit(sender: AnyObject) {
        
        if  let number = Int(userNumber.text!) {
        
            var isPrime = true
        
            if number == 1 {
                
                isPrime = false
            
            }
        
            if number != 2 && number != 1 {
                
                for var i = 2; i < number; i++ {
            
                    if number % i == 0 {
                
                        isPrime = false
                
                    }
            
                }
        
            }
        
        
            let title : String
        
            if isPrime {
            
                title = "The number is Prime!"
        
            } else {
            
                title = "The number is not Prime"
        
            }
        
        
            let ac = UIAlertController(title: title, message: nil, preferredStyle: .Alert)
        
            ac.addAction(UIAlertAction(title: "Continue", style: .Default, handler: nil))
        
            presentViewController(ac, animated: true, completion: nil)
        
            userNumber.text = ""

        } else {
            
            let error: String = "Please, enter a whole number"
            
            let ac = UIAlertController(title: error, message: nil, preferredStyle: .Alert)
            
            ac.addAction(UIAlertAction(title: "Continue", style: .Default, handler: nil))
            
            presentViewController(ac, animated: true, completion: nil)
            
            userNumber.text = ""

            
        }

}
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

