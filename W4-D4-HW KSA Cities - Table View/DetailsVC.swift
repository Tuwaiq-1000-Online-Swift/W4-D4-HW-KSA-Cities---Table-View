//
//  DetailsVC.swift
//  W4-D4-HW KSA Cities - Table View
//
//  Created by يعرُب on 20/04/1443 AH.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var cityDetailsLabel: UILabel!
    @IBOutlet weak var cityImagView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("from details vc", city.name)
        cityNameLabel.text = city.name
        cityImagView.image = city.image
        cityDetailsLabel.text = city.desc
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
