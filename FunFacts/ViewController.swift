//
//  ViewController.swift
//  FunFacts
//
//  Created by Eric Pan on 10/25/14.
//  Copyright (c) 2014 Eric Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {

        var currentRandomColor = colorWheel.randomColor()
        
        funFactLabel.text = factBook.randomFact()
        view.backgroundColor = currentRandomColor
        showFactButton.tintColor = currentRandomColor
        
    }

}

