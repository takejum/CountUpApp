//
//  ViewController.swift
//  CountUpApp
//
//  Created by Jumpei Takeshita on 2020/03/10.
//  Copyright © 2020 Jumpei Takeshita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //input count as "0"
        countLabel.text = "0"
        
    }

    
    
    @IBAction func plus(_ sender: Any) {
        
        //count up
        count = count + 1
        
        //reflect words on countLabel
        countLabel.text = String(count)
        
        //change countLabel color into yellow if countLabel is more than 10
        if count >= 10 {
            changeTextColor()
        }
        
        //nabeatsu mode will be activated when count is multiple 3
        if count % 3 == 0{
            nabeatsuCounter()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        
        //count down
        count = count - 1
        
        //reflect words on countLabel
        countLabel.text = String(count)
        
        //reset countLabel color into white if countLabel is less than 0
        if count <= 0{
            resetTextColor()
        }
        
        //nabeatsu mode will be activated when count is multiple 3
        if count % 3 == 0{
            nabeatsuCounter()
        }
    }
    
    
    //method that changes color into yellow
    func changeTextColor(){
        
        countLabel.textColor = .yellow
    
    }
    
    //method that resets color to white
    func resetTextColor(){
        
        countLabel.textColor = .white
        
    }
    
    //method that will say "ふぇえぇぇ！！" if countLabel is multiple of three
    func nabeatsuCounter(){
        countLabel.text = "ふぇえぇぇ！！"
        
    }
    
}

