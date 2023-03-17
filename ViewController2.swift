//
//  ViewController2.swift
//  user defaults
//
//  Created by monil sojitra on 03/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var l1: UILabel!
    
    @IBOutlet weak var l2: UILabel!
    var a1 : String = ""
    var a2 : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        l1.text = a1
        l2.text = a2

       
    }

}
