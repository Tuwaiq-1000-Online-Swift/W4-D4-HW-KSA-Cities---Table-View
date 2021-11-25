//
//  ViewController.swift
//  W4-D4-HW KSA Cities - Table View
//
//  Created by يعرُب on 20/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var array = [
        City(name: "Riyadh", image: UIImage(named: "Riyadh"), desc: "Riyadh (Arabic: الرياض‎, romanized: 'ar-Riyāḍ, lit.: 'The Gardens' [ar.riˈjaːdˤ] Najdi pronunciation: [er.rɪˈjɑːðˤ]) is the capital of Saudi Arabia and the largest city on the Arabian Peninsula. Located in the center of the an-Nafud desert, on the eastern part of the Najd plateau, the city sits at an average of 600 meters (2,000 ft) above sea level,[3] and receives around 5 million tourists each year, making it the forty-ninth most visited city in the world and the 6th in the Middle East. Riyadh had a population of 7.6 million people in 2019, making it the most-populous city in Saudi Arabia, 3rd most populous in the Middle East, and 38th most populous in Asia.[2]"),
        
        City(name: "Dammam", image: UIImage(named: "Dammam"), desc: "in 2019, making it the most-populous city in Saudi Arabia, 3rd most populous in the Middle East, and 38th most populous in Asia.[2]"),
        City(name: "Jeddah", image: UIImage(named: "Jeddah"), desc: "600 meters (2,000 ft) above sea level,[3] and receives around 5 million tourists each year, making it the forty-ninth most visited city in the world and the 6th in the Middle East. Riyadh had a population of 7.6"),
        
        City(name: "Makkah", image: UIImage(named: "Dammam"), desc: "600 meters (2,000 ft) above sea level,[3] and receives around 5 million tourists each year, making it the forty-ninth most visited city in the world and the 6th in the Middle East. Riyadh had a population of 7.6")
    ]
    
    
    @IBOutlet weak var citiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        citiesTableView.dataSource = self
        citiesTableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") as! CityCell
        
        let currentCity = array[indexPath.row]
        cell.cityNameLabel.text = currentCity.name
        cell.cityImageView.image = currentCity.image
        cell.cityImageView.layer.cornerRadius = cell.cityImageView.frame.width/2
        
 
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 118
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = array[indexPath.row]
        print(city.name)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? DetailsVC
        
        
        
        if let viewController = vc {
            viewController.city = city
            present(viewController, animated: true, completion: nil)
        }
        
    }
}

