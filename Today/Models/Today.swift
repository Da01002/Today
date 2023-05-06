//
//  Today.swift
//  Today
//
//  Created by 장다영 on 2023/03/27.
//

import UIKit

struct Today {
    var weather: String?
    var feelings: String?
    var color: Int?
    var photo: String?
    var text: String?
    var date: Date?
    
    func getDateString() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy년 MM월 dd일 E요일"
        let dateString = formatter.string(from: date!)
        
        return dateString
    }
}
