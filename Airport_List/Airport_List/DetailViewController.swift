//
//  DetailViewController.swift
//  Airport_List
//
//  Created by Pong on 2017/6/5.
//  Copyright © 2017年 Pong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var CityName: UILabel!
    @IBOutlet weak var CountryName: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var AirportImage: UIImageView!
    
    var cityNametmp = ""
    var countryNametmp = ""
    var nameLabeltmp = ""
    var imageViewtmp = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AirportImage.image = UIImage(named: imageViewtmp)
        CityName.text = cityNametmp
        CountryName.text = countryNametmp
        NameLabel.text = nameLabeltmp
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
