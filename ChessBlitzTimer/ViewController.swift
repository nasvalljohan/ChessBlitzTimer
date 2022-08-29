//
//  ViewController.swift
//  ChessBlitzTimer
//
//  Created by Johan Näsvall on 2022-08-29.
//

import UIKit

class ViewController: UIViewController {
    
    var count1: Double = 301.0
    var count2: Double = 301.0
    var timer = Timer()
    var switchBool: Bool = false
    var countBool: Bool = false
    @IBOutlet weak var lbltimer1: UILabel!
    @IBOutlet weak var lblTimer2: UILabel!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    var timeFormatter = DateComponentsFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        timeFormatter.allowedUnits = [.minute, .second]

        lbltimer1.text = "5:00"
        lblTimer2.text = "5:00"
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: updateTimer1(timer:))
        
    }
    
    func updateTimer1(timer: Timer?){
        if switchBool == false {
            count1 = count1 - 1
            let timeLeft = timeFormatter.string(from: count1)
            lbltimer1.text = timeLeft
        }else{
            count2 = count2 - 1
            let timeLeft = timeFormatter.string(from: count2)
            lblTimer2.text = timeLeft
        }
    }
    
    @IBAction func onPressPlay(_ sender: Any) {
        updateTimer1(timer: nil)
        
        if switchBool == false{
            switchBool = true
        }else {
            switchBool = false
        }
    }

    @IBAction func onPressReset(_ sender: Any) {
        
    }
}

