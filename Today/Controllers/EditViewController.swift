//
//  EditViewController.swift
//  Today
//
//  Created by 장다영 on 2023/04/01.
//

import UIKit

// TODO: - 버튼 아래 여백 수정
// TODO: - width로 인한 가로 스크롤 문제 해결

class EditViewController: UIViewController {
    
    var today: Today = Today()
    

    @IBOutlet var weatherBtns: [UIButton]!
    
    @IBOutlet var feelingsBtns: [UIButton]!
    
    @IBOutlet var colorBtns: [UIButton]!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        textView.text = "오늘 무슨 일이 있었는지 알려주세요."
            textView.textColor = .lightGray
    }
    
    @IBAction func tappedWeather(_ sender: UIButton) {
        for btn in weatherBtns {
            btn.backgroundColor = nil
        }
        today.weather = sender.restorationIdentifier
        sender.backgroundColor = UIColor(named: "background")
        print(sender.restorationIdentifier)
    }
    
    @IBAction func tappedFeelings(_ sender: UIButton) {
        for btn in feelingsBtns {
            btn.backgroundColor = nil
        }
        today.feelings = sender.restorationIdentifier
        sender.backgroundColor = UIColor(named: "background")
        print(sender.restorationIdentifier)
    }
    
    
    @IBAction func tappedColor(_ sender: UIButton) {
        for btn in colorBtns {
            btn.layer.borderWidth = 0
            btn.layer.borderColor = nil
        }
        today.color = Int(sender.restorationIdentifier!)
        sender.layer.borderWidth = 2
        sender.layer.borderColor = UIColor.red.cgColor
        print(sender.restorationIdentifier)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.textView.resignFirstResponder()
        }
    
}

// MARK: - textView placeholder extenstion
extension EditViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == .lightGray {
            textView.text = nil
            textView.textColor = UIColor(named: "font")
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "오늘 무슨 일이 있었는지 알려주세요."
            textView.textColor = .lightGray
        }
    }

}
