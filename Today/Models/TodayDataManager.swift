//
//  TodayDataManager.swift
//  Today
//
//  Created by 장다영 on 2023/04/01.
//

import Foundation

import UIKit

class TodayDataManger {
    
    var todayDataArray: [Today] = []
    
    func makeTodayData() {
        todayDataArray = [
            Today(weather: 0, feelings: 1, color: 0,
                  text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져",
                  date: Date()),
            Today(weather: 1, feelings: 2, color: 2, text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: 2, feelings: 3, color: 1, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: 3, feelings: 4, color: 4, text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: 4, feelings: 5, color: 5, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: 5, feelings: 0, color: 2, text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: 3, feelings: 2, color: 1, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date()),
            Today(weather: 4, feelings: 4, color: 3, photo: "ready",text: "너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져 너무 졸려요, 나중에는 그럴듯한 텍스트로 바꿔야합니다. 왜냐면 캡처를 해야되기 떄문이져", date: Date())
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
            return #colorLiteral(red: 0.7794707417, green: 0.4243335128, blue: 0.2480830252, alpha: 1)
        case 1:
            return #colorLiteral(red: 0.8658936024, green: 0.7405083776, blue: 0.7199332714, alpha: 1)
        case 2:
            return #colorLiteral(red: 0.8475932479, green: 0.6207891107, blue: 0.3523676991, alpha: 1)
        case 3:
            return #colorLiteral(red: 0.4521920085, green: 0.5506380796, blue: 0.6785832644, alpha: 1)
        case 4:
            return #colorLiteral(red: 0.560585618, green: 0.6389360428, blue: 0.5748235583, alpha: 1)
        case 5:
            return #colorLiteral(red: 0.6758640409, green: 0.7179716229, blue: 0.7381516099, alpha: 1)
        default:
            return .white
        }
    }
    
    func getWeatherImage(_ weatherInt: Int) -> UIImage {
        switch weatherInt {
        case 0:
            return UIImage(named: "sunny")!
        case 1:
            return UIImage(named: "cloudy")!
        case 2:
            return UIImage(named: "rainy")!
        case 3:
            return UIImage(named: "windy")!
        case 4:
            return UIImage(named: "snow")!
        default:
            return UIImage(named: "sunny")!
        }
    }
    
    func getFeelingsImage(_ feelingsInt: Int) -> UIImage {
        switch feelingsInt {
        case 0:
            return UIImage(named: "soHappy")!
        case 1:
            return UIImage(named: "happy")!
        case 2:
            return UIImage(named: "tired")!
        case 3:
            return UIImage(named: "sad")!
        case 4:
            return UIImage(named: "soSad")!
        default:
            return UIImage(named: "angry")!
        }
    }
}
