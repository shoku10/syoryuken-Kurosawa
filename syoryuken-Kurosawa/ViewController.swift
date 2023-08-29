//
//  ViewController.swift
//  Syoryuken
// created by Kurosawa  8/29/2023

import UIKit

class ViewController: UIViewController {
    
    //使用するpngの数を定義
    let imageCount = 20
    var attackArray: [String] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        for index in 0..<imageCount {
            attackArray.append("attack"+String(index+1))
            //print(attackArray)
        }
        displayImage(withName: attackArray[0])
        
        
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func attackBtn(_ sender: UIButton) {
        for i in 0..<attackArray.count {

    
            let delay = Double(i) * 0.1
            print(delay)
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                self.displayImage(withName: self.attackArray[i])
                
            }
        }
        displayImage(withName: attackArray[0])
        
    }
    
    func displayImage(withName attackName: String) {
        print(attackName)
        let image = UIImage(named: attackName)
        imageView.image = image
    }
}
