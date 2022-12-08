//
//  ViewController.swift
//  three latter word
//
//  Created by Molina, Yadira - Student on 11/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stackview: UIStackView!
    
    @IBOutlet weak var currentlabel: UILabel!
    
    
    @IBOutlet var wordlabel: [UILabel]!
    
    var letters:[String] = ["A","b","C","D","F","E","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var counter = 0
    var currentLetter: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentLetter = letters[counter]
        currentlabel.text = currentLetter
    }
    
    
    @IBAction func tap(_ sender: Any) {
        currentLetter = letters[counter]
        currentlabel.text = currentLetter
        let selectedPount = ((sender as! AnyObject).location(in: stackview))
        
        for label in wordlabel{
            if label.frame.contains(selectedPount)
            {
                label.text = "\(currentLetter!)"
            }
        }
        
        counter += 1
       
        
        
    }
    
//    func getAndSetCurrentletter(counter2: Int){currentletter = letters[couunter2]
//
//    }
    
}
