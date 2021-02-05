//
//  ViewController.swift
//  lab1
//
//  Created by Dan Luncasu on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    
    @IBOutlet weak var mainInput: UITextField!
    
    public var completionHandler: ((String?) -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTabButton() {
        let vc = storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        completionHandler?(mainInput.text)
        vc.completionHandler = {
            text in
            self.mainLbl.text = text
        }
        present(vc, animated: true)
    }
    
}

