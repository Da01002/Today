//
//  ViewController.swift
//  Today
//
//  Created by 장다영 on 2023/03/27.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var todayDataManager = TodayDataManger()
    var todayData: [Today] = [
        Today(weather: "sunny", feelings: "happy", color: 0,
              text: "첫번째 셀 테스트입니다.\n첫번째 셀 테스트입니다.",
              date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 1, text: "두번째 셀 테스트입니다.\n두번째 셀 테스트입니다.", date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 2, photo: "sky",
              text: "오늘 하늘이 너무 예뻤다.\n날씨가 계속 이렇게 좋았으면 좋겠다.",
              date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 3, text: "세번째 셀 테스트입니다.\n세번째 셀 테스트입니다.", date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 4, photo: "sunset",text: "바다애 가서 노을 보고 싶다.", date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 5, text: "네번째 셀 테스트입니다.\n네번째 셀 테스트입니다.", date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 6, photo: "forest",text: "더 더워지기 전에,\n등산 가야겠다.", date: Date()),
        Today(weather: "sunny", feelings: "happy", color: 1, photo: "sky",text: "다섯번째 셀 테스트입니다.\n다섯번째 셀 테스트입니다.", date: Date())
    ]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none

        tableView.dataSource = self
        tableView.delegate = self
    }

    func setupNavBar() {
        let plusButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(plusButtonTapped))
        plusButton.tintColor = UIColor.customColor(.font)
        navigationItem.rightBarButtonItem = plusButton
    }
    
    @objc func plusButtonTapped() {
        performSegue(withIdentifier: "toMakeToday", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let today = todayData[indexPath.row]
            print(today)
            
            if today.photo != nil {
                let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath) as! PhotoCell
                
                cell.dateLabel.text = today.getDateString()
                cell.feelingsImageView.image = getFeelingsImage(today.feelings!)
                cell.weatherImageView.image = getWeatherImage(today.weather!)
                cell.mainImageView.image = UIImage(named: today.photo!)
                cell.mainTextLabel.text = today.text
                cell.cellBackground.backgroundColor = UIColor.customColor(appColor(rawValue: today.color!)!)
                
                return cell

            }
            else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath) as! TextCell
                cell.dateLabel.text = today.getDateString()
                cell.feelingsImageView.image = getFeelingsImage(today.feelings!)
                cell.weatherImageView.image = getWeatherImage(today.weather!)
                cell.mainTextLabel.text = today.text
                cell.cellBackground.backgroundColor = UIColor.customColor(appColor(rawValue: today.color!)!)

                
                return cell
            }

            
        
    }
    
    
    func getWeatherImage(_ weather: String) -> UIImage {
        return UIImage(named: weather)!
    }
    
    func getFeelingsImage(_ feelings: String) -> UIImage {
        return UIImage(named: feelings)!
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let today = todayData[indexPath.row]
        
        if today.photo != nil {
            performSegue(withIdentifier: "toPhotoDetail", sender: indexPath)
        }
        else {
            performSegue(withIdentifier: "toTextDetail", sender: indexPath)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.identifier == "toPhotoDetail" {
            let indexPath = sender as! IndexPath
            let photoVC = segue.destination as! PhotoViewController
            photoVC.today = todayData[indexPath.row]
            photoVC.feelingsImage = getFeelingsImage(todayData[indexPath.row].feelings!)
            photoVC.weatherImage = getWeatherImage(todayData[indexPath.row].weather!)
            
            
        }
        else if segue.identifier == "toTextDetail" {
            let indexPath = sender as! IndexPath
            let textVC = segue.destination as! TextViewController
            textVC.today = todayData[indexPath.row]
            textVC.feelingsImage = getFeelingsImage(todayData[indexPath.row].feelings!)
            textVC.weatherImage = getWeatherImage(todayData[indexPath.row].weather!)
        }
    }
}
