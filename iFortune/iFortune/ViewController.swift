//
//  ViewController.swift
//  iFortune
//
//  Created by MacOS on 01.02.21.
//  Copyright © 2021 MacOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var card: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rezult(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest:Result = segue.destination as! Result
        dest.cardNum = card
    }
    @IBAction func c0(_ sender: Any) {
        card = 0
    }
    @IBAction func c1(_ sender: Any) {
        card = 1
    }
    @IBAction func c2(_ sender: Any) {
        card = 2
    }
    @IBAction func c3(_ sender: Any) {
        card = 3
    }
    @IBAction func c4(_ sender: Any) {
        card = 4
    }
    @IBAction func c5(_ sender: Any) {
        card = 5
    }
    @IBAction func c6(_ sender: Any) {
        card = 6
    }
    @IBAction func c7(_ sender: Any) {
        card = 7
    }
    @IBAction func c8(_ sender: Any) {
        card = 8
    }
    @IBAction func c9(_ sender: Any) {
        card = 9
    }
    @IBAction func c10(_ sender: Any) {
        card = 10
    }
    @IBAction func c11(_ sender: Any) {
        card = 11
    }
    
}

