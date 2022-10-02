//
//  ViewController.swift
//  TestProject
//
//  Created by 최정원 on 2022/10/02.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var inputField: UITextField!
    var inputBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView = UIImageView(frame: CGRect(x: (self.view.frame.width - 200) * 0.5, y: 200, width: 200, height: 200))
        imageView.backgroundColor = .blue
        
        self.view.addSubview(imageView)
        
        inputField = UITextField(frame: CGRect(x: (self.view.frame.width - 250), y: imageView.frame.origin.y + imageView.frame.size.height + 10, width: 200, height: 100))
        inputField.placeholder = "동물 이름을 입력하세요."
        inputField.autocapitalizationType = .none
        
        self.view.addSubview(inputField)
        
        inputBtn = UIButton(type: .roundedRect)
        inputBtn.frame = CGRect(x: (self.view.frame.width - 80) * 0.5, y: inputField.frame.origin.y + inputField.frame.size.height + 20, width: 80, height: 20)
        inputBtn.setTitle("입력", for: .normal)
        
        self.view.addSubview(inputBtn)
        
        inputBtn.addTarget(self, action: #selector(touchedBtn), for: .touchUpInside)
        
    }
    
    @objc func touchedBtn() {
        let _inputText = inputField.text
        
        if _inputText == "사자" {
            imageView.image = #imageLiteral(resourceName: "img_lion")
        } else if _inputText == "호랑이" {
            imageView.image = #imageLiteral(resourceName: "img_tiger")
        } else if _inputText == "강아지" || _inputText == "개" {
            imageView.image = #imageLiteral(resourceName: "img_dog")
        } else if _inputText == "고양이" {
            imageView.image = #imageLiteral(resourceName: "img_cat")
        }
        
    }
    
}
