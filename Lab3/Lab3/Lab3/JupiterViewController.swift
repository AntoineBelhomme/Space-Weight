//
//  JupiterViewController.swift
//  Lab3
//
//  Created by Antoine Belhomme on 2/5/22.
//

import UIKit

class JupiterViewController: UIViewController {

    var fromEarth:String?
    var data = "Coming from Jupiter"
    
    
    @IBOutlet weak var wEarth: UILabel!
    @IBOutlet weak var wMoon: UILabel!
    
    @IBOutlet weak var wJupiter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wEarth.text = "Your weight on Earth is " + fromEarth!
        let math = Double(fromEarth!)
        let weimoon = Double(math!/6)
        wMoon.text = "Your weight on the Moon is " + String(weimoon)
        let wjupi = Double(math!) * 2.4
        wJupiter.text = "Your weight on Jupiter is " + String(wjupi)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
