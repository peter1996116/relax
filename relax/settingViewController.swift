//
//  settingViewController.swift
//  relax
//
//  Created by 金陳廷 on 2019/4/14.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit
import AVFoundation
class settingViewController: UIViewController {
    
    @IBOutlet weak var Speed: UISlider!
    @IBOutlet weak var Size: UISlider!
    @IBOutlet weak var Red: UISlider!
    @IBOutlet weak var Green: UISlider!
    @IBOutlet weak var Blue: UISlider!
    @IBOutlet weak var Speedlabel: UILabel!
    @IBOutlet weak var Sizelabel: UILabel!
    @IBOutlet weak var Redlabel: UILabel!
    @IBOutlet weak var Greenlabel: UILabel!
    @IBOutlet weak var Bluelabel: UILabel!
    @IBOutlet weak var select: UITextField!
    @IBOutlet weak var qus: UIButton!
    @IBOutlet weak var img_label: UILabel!
    var looper: AVPlayerLooper?
    @IBOutlet weak var date: UIDatePicker!
    let dateArray:[String] = ["02 14","05 12","11 11","12 25"]
    let nameArray:[String] = ["情人節","母親節","單身節","聖誕節"]
    let imgArray:[String] = ["heart","carnation","dog","snowflake"]
    var item:Int?
    var urls:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        item=1
        img_label.text="選取背景樣式為：05 12母親節"
        Speedlabel.text = String(format: "%.2f", Speed.value)
        Sizelabel.text = String(format: "%.2f",Size.value)
        Greenlabel.text=String(format: "%.2f",Green.value)
        Redlabel.text=String(format: "%.2f",Red.value)
        Bluelabel.text=String(format: "%.2f",Blue.value)
    
        
      
        // Do any additional setup after loading the view.
    }
    
    
    func texttt(_ textField:UITextField) -> Bool{
        select.resignFirstResponder()
        return true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    @IBAction func imgselect(_ sender: Any) {

        let dateValue = DateFormatter()
        dateValue.dateFormat = "MM dd"
        print(dateValue.string(from: date.date))
        for i in 0..<dateArray.count{
            if(String(dateValue.string(from: date.date))==dateArray[i] ||  select.text==nameArray[i] || select.text==dateArray[i])
            {
                img_label.text="選取背景樣式為："+dateArray[i]+nameArray[i]
                item=i
            }
            
        }
    }
    
    
    
    @IBAction func moveSpeed(_ sender: Any) {
        Speedlabel.text = String(format: "%.2f", Speed.value)
    }
    @IBAction func moveSize(_ sender: Any) {
        Sizelabel.text = String(format: "%.2f",Size.value)
    }
    
    @IBAction func moveRed(_ sender: Any) {
        view.backgroundColor = UIColor(red: CGFloat(Red.value), green: CGFloat(Green.value), blue: CGFloat(Blue.value), alpha: 0.8)
        Redlabel.text=String(format: "%.2f",Red.value)
    }
    
    @IBAction func moveGreen(_ sender: Any) {
        view.backgroundColor = UIColor(red: CGFloat(Red.value), green: CGFloat(Green.value), blue: CGFloat(Blue.value), alpha: 0.8)
        Greenlabel.text=String(format: "%.2f",Green.value)
    }
    
    @IBAction func moveBlue(_ sender: Any) {
        view.backgroundColor = UIColor(red: CGFloat(Red.value), green: CGFloat(Green.value), blue: CGFloat(Blue.value), alpha: 0.8)
        Bluelabel.text=String(format: "%.2f",Blue.value)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="look" {
        
            let controller = segue.destination as! imageViewController
            controller.Speed=Speed.value
            controller.Red=Red.value
            controller.Size=Size.value
            controller.Green=Green.value
            controller.Blue=Blue.value
            controller.image=imgArray[item!]
        }
        else
        {
        
            let controller = segue.destination as! musicViewController
            controller.Speed=Speed.value
            controller.Red=Red.value
            controller.Size=Size.value
            controller.Green=Green.value
            controller.Blue=Blue.value
            controller.image=imgArray[item!]
        }
        
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
