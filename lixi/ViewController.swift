//
//  ViewController.swift
//  lixi
//
//  Created by Toan on 2/7/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
    @IBOutlet weak var choice2view: UIButton!
    
    @IBOutlet weak var moneyimg: UIImageView!
    @IBOutlet weak var myview: UIImageView!
    var audioPlayer : AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
    }
    func setview(){
        myview.center = view.center
        myview.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        choice2view.layer.cornerRadius = 5
        
    }
    
    @IBAction func butonaction(_ sender: Any) {
       
        var random  = Int.random(in: 0...3)
        switch random {
        case 1:
            moneyimg.image = UIImage(named: "100k")
            
            UIView.animate(withDuration: 5) {
                self.sound()
                self.moneyimg.center = self.view.center
                self.moneyimg.frame.origin.y -= 200
            }
        case 2:
             self.moneyimg.center = self.view.center
            moneyimg.image = UIImage(named: "200k")
            UIView.animate(withDuration: 5) {
                self.sound()
                self.moneyimg.frame.origin.y -= 200
            }
            break
        case 3 :
             self.moneyimg.center = self.view.center
             moneyimg.image = UIImage(named: "500k")
             UIView.animate(withDuration: 5) {
                self.sound()
                 self.moneyimg.frame.origin.y -= 200
             }
            break
        default:
            moneyimg.image = UIImage(named: "100k")
        }
    }
    func sound(){
        let path = Bundle.main.path(forResource: "sxmb.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
            audioPlayer?.numberOfLoops = -1
        }catch{
            print("loi")
        }
    }
   /*func playSound() {
   let path = Bundle.main.path(forResource: "bubblewater.mp3", ofType: nil)!
   let url = URL(fileURLWithPath: path)
   
   do {
       soundPlayer = try AVAudioPlayer(contentsOf: url)
       soundPlayer?.play()
       // đặt numberOfLoops = -1 để nó chạy lại khi chạy hết
       soundPlayer?.numberOfLoops = -1
   } catch {
       print("lỗi")
       // couldn't load file
   }*/

}
