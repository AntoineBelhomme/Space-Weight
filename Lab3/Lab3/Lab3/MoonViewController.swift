//
//  MoonViewController.swift
//  Lab3
//
//  Created by Antoine Belhomme on 2/5/22.
//

import UIKit

class MoonViewController: UIViewController {

    var fromEarth:String?
    var data = "Coming from the Moon"
    
    var data_from_third:String?
    
    @IBOutlet weak var wEarth: UILabel!
    
    @IBOutlet weak var wMoon: UILabel!
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wEarth.text = "Your weight on Earth is " + fromEarth!
        let math = Double(fromEarth!)
        let weimoon = math!/6
        wMoon.text = "Your weight on the Moon is " + String(weimoon)
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let sourceView = segue.destination as? ViewController
        {
            //got some errors with moon page giving me an error going back to earth so i just made an empty case.
        }
        else{
        let des = segue.destination as!JupiterViewController
        if(segue.identifier == "toJupiter")
        {
            des.fromEarth = fromEarth!
        }
        }
    }
    @IBAction func fromThird(segue: UIStoryboardSegue)
    {
        if let sourceView = segue.source as? JupiterViewController {
              data_from_third = sourceView.data
            display.text = data_from_third
            display.isHidden = false
        }

}
}
