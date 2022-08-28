//
//  ViewController.swift
//  CountYourWay
//
//  Created by Вячеслав Кремнев on 1/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    let way = Way.getWay()
    
    @IBOutlet weak var vehicleSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var distanceTF: UITextField!
    @IBOutlet weak var speedTF: UITextField!
    @IBOutlet weak var stopsTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func segmentWarning(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            showAlert(title: "Внимание", message: "Учитывайте местность при передвижении пешком!")
        } else if  sender.selectedSegmentIndex == 1 {
            showAlert(title: "Внимание", message: "Учитывайте местность и направление ветра при передвижении на велосипеде!")
        } else if  sender.selectedSegmentIndex == 2 {
            showAlert(title: "Внимание", message: "Учитывайте погодные условия при передвижении на автомобиле!")
        } else if  sender.selectedSegmentIndex == 3 {
            showAlert(title: "Внимание", message: "Учитывайте количество остановок чтобы правильно расчитать время прибытия при передвижении на поезде!")
        } else if  sender.selectedSegmentIndex == 4 {
            showAlert(title: "Внимание", message: "Не забудьте пристегнуть ремни!")
        }
    }
    
    @IBAction func getResultButton(_ sender: UISegmentedControl) {
        
        let distanceValue = Int(distanceTF.text ?? "") ?? 0
        let speedValue = Int(speedTF.text ?? "") ?? 0
        
        if distanceValue != 0 && speedValue != 0 {
            resultLabel.text = "It will take about \(String(distanceValue / speedValue)) hours"
        } else {
            showAlert(title: "Zero is not available!", message: "Please type correct value!")
        }
    }
}

extension ViewController{
    
    private func showAlert(title: String, message: String, preferredStyle:UITextField? = nil ) {
        let alert = UIAlertController(title:title, message:message , preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}


