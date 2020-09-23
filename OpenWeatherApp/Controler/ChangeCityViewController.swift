//
//  ChangeCityViewController.swift
//  OpenWeatherApp
//
//  Created by agnese.saulite on 19/09/2020.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredNewCityName(city: String)
    }



class ChangeCityViewController: UIViewController {

    var delegate: ChangeCityDelegate?
    
    @IBOutlet weak var cityTextField: UITextField!

    @IBAction func getWeatherTapped(_ sender: Any) {
        guard let cityName = cityTextField.text else {
            return
        }
        
        delegate?.userEnteredNewCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)
    }
}
