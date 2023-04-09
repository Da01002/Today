//
//  TextViewController.swift
//  Today
//
//  Created by 장다영 on 2023/03/29.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var feelingsImageView: UIImageView!
    
    @IBOutlet weak var mainTextLabel: UILabel!
    
    @IBOutlet weak var textBackground: UIView!
    
    var today: Today?
    var feelingsImage: UIImage?
    var weatherImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        configureUI()

    }
    
    func setData() {
        dateLabel.text = today?.getDateString()
        weatherImageView.image = weatherImage
        feelingsImageView.image = feelingsImage
        mainTextLabel.text = today?.text
    }
    
    func configureUI() {
        view.backgroundColor = UIColor.customColor(appColor(rawValue: (today?.color)!) ?? .background)
        textBackground.layer.borderColor = UIColor.customColor(.font).cgColor
        textBackground.layer.borderWidth = 1
        textBackground.layer.cornerRadius = 8
    }

}
