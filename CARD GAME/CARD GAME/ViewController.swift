//
//  ViewController.swift
//  CARD GAME
//
//  Created by MACBOOK AIR on 21/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftViewController: UIImageView!
    
    
    @IBOutlet weak var RightViewController: UIImageView!
    
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLable: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealButtonTapped(_ sender: Any) {
    
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
    
        LeftViewController.image = UIImage(named: "card\(leftNumber)")
        RightViewController.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
         
       else if rightNumber > leftNumber{
            rightScore += 1
            rightScoreLable.text = String(rightScore)
        }
            
        else {
        
        
    }
    
}

}
