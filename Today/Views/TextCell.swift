//
//  TextCell.swift
//  Today
//
//  Created by 장다영 on 2023/03/27.
//

import UIKit

final class TextCell: UITableViewCell {
    

    @IBOutlet weak var cellBackground: UIView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var feelingsImageView: UIImageView!
    
    
    @IBOutlet weak var mainTextLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }

    func configureUI() {
        cellBackground.clipsToBounds = true
        cellBackground.layer.cornerRadius = 8

    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: false)

        // Configure the view for the selected state
    }

}
