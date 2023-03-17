//
//  ViewController.swift
//  user defaults
//
//  Created by monil sojitra on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = segue.destination as! ViewController2
        a.a1 = t1.text!
        a.a2 = t2.text!
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
        showalert()
    }
    func showalert(){
        let alert = UIAlertController(title: "YOUR CHOICE", message: "save", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "save", style: .default,handler: { _ in
            UserDefaults.standard.set(self.t1.text, forKey: "username")
            UserDefaults.standard.set(self.t2.text, forKey: "password")
            self.performSegue(withIdentifier: "page 2", sender:self)
        } ))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .destructive))
        present(alert, animated: true)
    }
    
}

