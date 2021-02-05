//
//  SecondViewController.swift
//  lab1
//
//  Created by Dan Luncasu on 06.02.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondInput: UITextField!
    
    @IBOutlet weak var secondLbl: UILabel!
    
    public var completionHandler: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = storyboard?.instantiateViewController(identifier: "firstVC") as! ViewController
        vc.completionHandler = {
            text in
            self.secondLbl.text = text
        }
    }

    @IBAction func didTapSave() {
        completionHandler?(secondInput.text)
        
        dismiss(animated: true, completion: nil)
    }
}
