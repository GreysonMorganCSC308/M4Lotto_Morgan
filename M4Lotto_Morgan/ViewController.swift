//
//  ViewController.swift
//  M4Lotto_Morgan
//
//  Created by Morgan, Ashley F. on 2/12/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [numLabel1!, numLabel2!, numLabel3!, numLabel4!, numLabel5!, numLabel6!, numLabel7!]
        
        var nums = [Int]()
        while nums.count < labels.count {
            let rndNum = Int.random(in: 1...45)
            if !nums.contains(rndNum) {
                nums.append(rndNum)
            }
        }
        
        let sortedNums = nums.sorted()
//        nums.sorted(by: >) // descending
        
        for (i, label) in labels.enumerated() {
            label.layer.cornerRadius = label.bounds.width / 2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[i])" // String Interpolation "\()"
            
            switch sortedNums[i] {
            case 1...10:
                label.backgroundColor = UIColor.red
                label.textColor = .white
            case 11...20:
                label.backgroundColor = UIColor.green
                label.textColor = .black
            case 21...30:
                label.backgroundColor = UIColor.blue
                label.textColor = .white
            case 31...40:
                label.backgroundColor = UIColor.yellow
                label.textColor = .black
            case 41...45:
                label.backgroundColor = UIColor.green
                label.textColor = .black
            default:
                break
            }
        }
        
        
    }


}


