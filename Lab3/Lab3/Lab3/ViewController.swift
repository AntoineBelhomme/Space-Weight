//
//  ViewController.swift
//  Lab3
//
//  Created by Antoine Belhomme on 2/5/22.
//

import UIKit

class ViewController: UIViewController {

    var data_from_second:String?
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as!MoonViewController
        if(segue.identifier == "totheMoon")
        {
            des.fromEarth = weight.text!
        }
        }
    @IBAction func fromSecond(segue: UIStoryboardSegue)
    {
        if let sourceView = segue.source as? MoonViewController {
              data_from_second = sourceView.data
            display.text = data_from_second
            display.isHidden = false
        }
        if let sourceView = segue.source as? JupiterViewController {
              data_from_second = sourceView.data
            display.text = data_from_second
            display.isHidden = false
        }
    }
}

