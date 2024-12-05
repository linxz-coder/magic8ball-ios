//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    // 定义一个数组来存放图片
    var ballArray: [UIImage] = []

    // 图片名称为 ball1, ball2, ball3, ball4, ball5
    let imageNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        for name in imageNames {
            if let image = UIImage(named: name) {
                ballArray.append(image)
            }
        }
    }

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = ballArray[Int.random(in: 1...5)-1]
    }
    
    
    
    


}

