//
//  ViewController.swift
//  Concurrency
//
//  Created by Pranav Shashikant Deshpande on 7/10/17.
//  Copyright © 2017 Pranav Shashikant Deshpande. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dispatchQ = DispatchQueue.global()
        
        print ("asynch", Thread.current)
        dispatchQ.sync {
            print ("inside", Thread.current)
            sleep(10)
        }
        
        print ("hello gcd", Thread.current)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

