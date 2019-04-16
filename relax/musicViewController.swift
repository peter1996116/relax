//
//  musicViewController.swift
//  relax
//
//  Created by 金陳廷 on 2019/4/15.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit
import AVFoundation
class musicViewController: UIViewController {

    @IBOutlet weak var segval: UISegmentedControl!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var select1: UIButton!
    @IBOutlet weak var select2: UIButton!
    @IBOutlet weak var select3: UIButton!
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name3: UILabel!
    var image: String?
    var Speed: Float?
    var Size: Float?
    var looper: AVPlayerLooper?
    let urlArray:[String] = ["https://bit.ly/2Dj1Aro","https://bit.ly/2IxWFWR","https://bit.ly/2VIkCOW","https://bit.ly/2ZbPhGy","https://bit.ly/2UjX6Gk","https://bit.ly/2v5NepJ"]
    let titleArray:[String] = ["怎麼了","超人不會飛","分手快樂","Just the way you are","Sugar","Because of you"]
    var selects:Int?
    
    
    var Red: Float?
    var Green: Float?
    var Blue: Float?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:CGFloat(Red!), green:CGFloat(Green!), blue:CGFloat(Blue!), alpha:1)
        selects=0
        if(segval.selectedSegmentIndex==0 ){
            
            name1.text=titleArray[0]
            name2.text=titleArray[1]
            name3.text=titleArray[2]
            img1.image = UIImage(named:"1")
            img2.image = UIImage(named:"2")
            img3.image = UIImage(named:"3")
            select1.setTitle("選擇", for: .normal)
            select2.setTitle("選擇", for: .normal)
            select3.setTitle("選擇", for: .normal)
            if(selects!==0){
                select1.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select1.setTitle("已選擇", for: .normal)
            }
            else if(selects!==1){
                select2.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select2.setTitle("已選擇", for: .normal)
            }
            else if(selects!==2){
                select3.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select3.setTitle("已選擇", for: .normal)
            }
        }
        else{
            
            name1.text=titleArray[3]
            name2.text=titleArray[4]
            name3.text=titleArray[5]
            img1.image = UIImage(named:"4")
            img2.image = UIImage(named:"5")
            img3.image = UIImage(named:"6")
            select1.setTitle("select", for: .normal)
            select2.setTitle("select", for: .normal)
            select3.setTitle("select", for: .normal)
            if(selects!==3){
                select1.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select1.setTitle("selected", for: .normal)
            }
            else if(selects!==4){
                select2.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select2.setTitle("selected", for: .normal)
            }
            else if(selects!==5){
                select3.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select3.setTitle("selected", for: .normal)
            }
            
            
            
        }
        
        
        if let url = URL(string:urlArray[selects!] ) {
            let player = AVQueuePlayer()
            let item = AVPlayerItem(url: url)
            looper = AVPlayerLooper(player: player, templateItem: item)
            player.play()
        }
    }
    
    
    @IBAction func loadseg(_ sender: Any) {
        if(segval.selectedSegmentIndex==0){
            select1.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
            select3.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
            select2.backgroundColor=UIColor(red: 1, green: 1 ,blue: 1, alpha: 0.3)
            name1.text=titleArray[0]
            name2.text=titleArray[1]
            name3.text=titleArray[2]
            img1.image = UIImage(named:"1")
            img2.image = UIImage(named:"2")
            img3.image = UIImage(named:"3")
            select1.setTitle("選擇", for: .normal)
            select2.setTitle("選擇", for: .normal)
            select3.setTitle("選擇", for: .normal)
            if(selects!==0){
                select1.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select1.setTitle("已選擇", for: .normal)
            }
            else if(selects!==1){
                select2.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select2.setTitle("已選擇", for: .normal)
            }
            else if(selects!==2){
                select3.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select3.setTitle("已選擇", for: .normal)
            }
        }
        else{
            select1.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
            select3.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
            select2.backgroundColor=UIColor(red: 1, green: 1 ,blue: 1, alpha: 0.3)
            name1.text=titleArray[3]
            name2.text=titleArray[4]
            name3.text=titleArray[5]
            img1.image = UIImage(named:"4")
            img2.image = UIImage(named:"5")
            img3.image = UIImage(named:"6")
            select1.setTitle("select", for: .normal)
            select2.setTitle("select", for: .normal)
            select3.setTitle("select", for: .normal)
            if(selects!==3){
                select1.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select1.setTitle("selected", for: .normal)
            }
            else if(selects!==4){
                select2.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select2.setTitle("selected", for: .normal)
            }
            else if(selects!==5){
                select3.backgroundColor=UIColor(red: 1, green: 0.6 ,blue: 0.6, alpha: 0.3)
                select3.setTitle("selected", for: .normal)
            }
        }
    }
    
    
    @IBAction func btn1Ac(_ sender: Any) {
        select1.backgroundColor=UIColor(red: 1, green: 0.6, blue: 0.6, alpha: 0.3)
        select3.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        select2.backgroundColor=UIColor(red: 1, green: 1 ,blue: 1, alpha: 0.3)
        if(segval.selectedSegmentIndex==0){
            select1.setTitle("已選擇", for: .normal)
            
            select2.setTitle("選擇", for: .normal)
            select3.setTitle("選擇", for: .normal)
            selects=0
        }
        else{
            select1.setTitle("selected", for: .normal)
            select2.setTitle("select", for: .normal)
            select3.setTitle("select", for: .normal)
            selects=3
        }
        if let url = URL(string:urlArray[selects!] ) {
            let player = AVQueuePlayer()
            let item = AVPlayerItem(url: url)
            looper = AVPlayerLooper(player: player, templateItem: item)
            player.play()
        }
    }
    
    @IBAction func btn2(_ sender: Any) {
        select2.backgroundColor=UIColor(red: 1, green: 0.6, blue: 0.6, alpha: 0.3)
        select3.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        select1.backgroundColor=UIColor(red: 1, green: 1 ,blue: 1, alpha: 0.3)
        if(segval.selectedSegmentIndex==0){
            select2.setTitle("已選擇", for: .normal)
            select1.setTitle("選擇", for: .normal)
            select3.setTitle("選擇", for: .normal)
            selects=1
        }
        else{
            select1.setTitle("select", for: .normal)
            select2.setTitle("selected", for: .normal)
            select3.setTitle("select", for: .normal)
            selects=4
        }
        if let url = URL(string:urlArray[selects!] ) {
            let player = AVQueuePlayer()
            let item = AVPlayerItem(url: url)
            looper = AVPlayerLooper(player: player, templateItem: item)
            player.play()
        }
    }
    @IBAction func btn3(_ sender: Any) {
        select3.backgroundColor=UIColor(red: 1, green: 0.6, blue: 0.6, alpha: 0.3)
        select1.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        select2.backgroundColor=UIColor(red: 1, green: 1 ,blue: 1, alpha: 0.3)
        if(segval.selectedSegmentIndex==0){
            select3.setTitle("已選擇", for: .normal)
            select2.setTitle("選擇", for: .normal)
            select1.setTitle("選擇", for: .normal)
            selects=2
        }
        else{
            select3.setTitle("selected", for: .normal)
            select2.setTitle("select", for: .normal)
            select1.setTitle("select", for: .normal)
            selects=5
        }
        if let url = URL(string:urlArray[selects!] ) {
            let player = AVQueuePlayer()
            let item = AVPlayerItem(url: url)
            looper = AVPlayerLooper(player: player, templateItem: item)
            player.play()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controllers = segue.destination as! homeViewController
        controllers.Red=Red!
        controllers.Green=Green!
        controllers.Blue=Blue!
        controllers.selects=selects
        controllers.Speed=Speed!
        controllers.Size=Size!
        controllers.image=image!
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
