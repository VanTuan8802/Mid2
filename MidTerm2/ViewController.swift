//
//  ViewController.swift
//  MidTerm2
//
//  Created by Nguyễn Tuấn on 29/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var machine: UIImageView!
    @IBOutlet weak var me: UIImageView!
    var images: [UIImage?] = [UIImage(named: "bao") , UIImage(named: "keo") , UIImage(named: "bua") ]

    var m : String = ""
    var n : String = ""
    
    @IBOutlet weak var result: UITextView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var x : String = "Kéo"
    var y : String = "Búa"
    var z : String = "Bao"
    
    func Result(_ a:String ,_ b : String) ->String
    {
       if(a==x)
        {
           if(b==x)
           {
               return "Draw"
           }
           else if(b==y)
           {
               return "Loss"
           }
           else
           {
               return "Win"
           }
       }
        else if(a==y)
         {
            if(b==y)
            {
                return "Draw"
            }
            else if(b==z)
            {
                return "Loss"
            }
            else
            {
                return "Win"
            }
        }
        
        else
         {
            if(b==z)
            {
                return "Draw"
            }
            else if(b==x)
            {
                return "Loss"
            }
            else
            {
                return "Win"
            }
        }
    }
    
    func Check(_ img : UIImageView)->String{
        if(machine.accessibilityIdentifier == "keo")
        {
            return "Kéo"
        }
        else if(machine.accessibilityIdentifier == "bao" )
        {
            return "Bao"
        }
        
        else
        {
            return "Búa"
        }
    }
    

    @IBAction func Keo(_ sender: Any) {
        me.image = UIImage(named: "keo")
        m="Kéo"
        
        machine.image = images.randomElement() ?? UIImage(named: "keo")
        n=Check(machine)
        result.text=Result(m,n)
    }

    
    @IBAction func Bua(_ sender: Any) {
        me.image = UIImage(named: "bua")
        m = "Búa"
    
        machine.image = images.randomElement() ?? UIImage(named: "keo")
        n=Check(machine)
        result.text=Result(m,n)
    }
    
    @IBAction func Bao(_ sender: Any) {
        me.image = UIImage(named: "bao")
        m = "Bao"
    
        machine.image = images.randomElement() ?? UIImage(named: "keo")
        n=Check(machine)
        result.text=Result(m,n)
    }
}

