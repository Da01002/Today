//
//  TodayDataManager.swift
//  Today
//
//  Created by 장다영 on 2023/04/01.
//

import Foundation

import UIKit

// TODO: - firebase랑 연결하기

class TodayDataManger {
    
    var todayDataArray: [Today] = []
    
    func makeTodayData() {
        todayDataArray = [
            Today(weather: "sunny", feelings: "happy", color: 0,
                  text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져",
                  date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 2, text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 1, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 4, text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 5, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 2, text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 1, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: "sunny", feelings: "happy", color: 3, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date())
        ]
        print(todayDataArray)
        print("데이터 생성완료")
    }
    
    func getTodayData() -> [Today] {
        return todayDataArray
    }
    
//    func updateTodayData() {
//        let movie = Movie(movieImage: UIImage(named: "spiderman2.png"), movieName: "스파이더맨2", movieDescription: "스파이더맨 시즌2")
//        movieDataArray.append(movie)
//    }
    
    func getColor(_ colorInt: Int) -> UIColor {
        switch colorInt {
        case 0:
            return UIColor(named: "warm1")!
        case 1:
            return UIColor(named: "warm2")!
        case 2:
            return UIColor(named: "warm3")!
        case 3:
            return UIColor(named: "cool1")!
        case 4:
            return UIColor(named: "cool2")!
        case 5:
            return UIColor(named: "cool3")!
        default:
            return .white
        }
    }
    
    func getWeatherImage(_ weather: String) -> UIImage {
        return UIImage(named: weather)!
    }
    
    func getFeelingsImage(_ feelings: String) -> UIImage {
        return UIImage(named: feelings)!
    }
}
