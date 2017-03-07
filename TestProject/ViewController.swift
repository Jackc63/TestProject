//
//  ViewController.swift
//  TestProject
//
//  Created by User on 07/03/2017.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    let shouldAnimate = true

    @IBAction func hiButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert", message: "Find The Purple Button Below", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .destructive, handler:nil))
        
        
        self.present(alert, animated: shouldAnimate, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ButtonButton(_ sender: UIButton) {
    
    
        let alert = UIAlertController(title: "Do you like toast!?!?", message: "Very Important Question", preferredStyle: UIAlertControllerStyle.alert)
    
        let action1 = UIAlertAction(title: "Yes", style: .default) {
            action in
            
            self.playSound()
        }
        
        alert.addAction(action1)
    
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: shouldAnimate, completion: nil)
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "slurp", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func HiddenButton(_ sender: UIButton) {
    
        let alert = UIAlertController(title: "Alert", message: "Congrats You've Found It", preferredStyle: UIAlertControllerStyle.alert)

        alert.addAction(UIAlertAction(title: "Yay", style: .default, handler:nil))
    
    
        self.present(alert, animated: shouldAnimate, completion: nil)

    }

}
