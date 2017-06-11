//
//  PassController.swift
//  Project 4
//
//  Created by Mohamed Al Mohannadi on 6/8/17.
//  Copyright © 2017 Mohamed Al Mohannadi. All rights reserved.
//

import UIKit
import Foundation

class PassController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var entrantType: UILabel!
    @IBOutlet weak var birthDate: UILabel!
    @IBOutlet weak var unlimitedRides: UILabel!
    @IBOutlet weak var fastTrack: UILabel!
    @IBOutlet weak var accessibility: UILabel!
    @IBOutlet weak var discountFood: UILabel!
    @IBOutlet weak var discountMerch: UILabel!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var cityAddress: UILabel!
    @IBOutlet weak var stateAddress: UILabel!
    @IBOutlet weak var zipCode: UILabel!

    var storeFirstName: String = ""
    var storeLastName: String = ""
    var storeEntrantType: String = ""
    var storebirthDate: String = ""
    var storeStreetAddress: String = ""
    var storeCityAddress: String = ""
    var storeStateAddress: String = ""
    var storeZipCode: String = ""
    
    var storeRecentButton: EntrantType = EntrantType.adult
    
    
    @IBAction func createAnother(_ sender: UIButton) {
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = "\(storeFirstName) \(storeLastName)"
        birthDate.text = storebirthDate
        streetAddress.text = storeStreetAddress
        cityAddress.text = storeCityAddress
        stateAddress.text = storeStateAddress
        zipCode.text = storeZipCode
  

         
        switch storeRecentButton {
        
        case .adult:
            
            if directory[0].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true}
            if directory[0].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[0].accessibility.joined(separator: ", ")
            
            if directory[0].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[0].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[0].discountPercentForMerchandise!)% Discount On Merch" }

            
            
            
            
            entrantType.text = "Guest, Adult"
            
        case .child:
            
            if directory[1].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[1].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[1].accessibility.joined(separator: ", ")
            
            if directory[1].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true} else { discountFood.text = "\(directory[1].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[1].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, Child"
            
            streetAddress.isHidden = true
            cityAddress.isHidden = true
            stateAddress.isHidden = true
            zipCode.isHidden = true
            
        case .senior:
            
            if directory[2].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[2].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true}
            accessibility.text = directory[2].accessibility.joined(separator: ", ")
            
            if directory[2].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[2].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[2].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, Senior"
            
            streetAddress.isHidden = true
            cityAddress.isHidden = true
            stateAddress.isHidden = true
            zipCode.isHidden = true
            
        case .vip:
            
            if directory[3].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[3].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[3].accessibility.joined(separator: ", ")
            
            if directory[3].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[3].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[3].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, VIP"
            
            streetAddress.isHidden = true
            cityAddress.isHidden = true
            stateAddress.isHidden = true
            zipCode.isHidden = true
            
        case .food:
            
            if directory[4].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[4].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[4].accessibility.joined(separator: ", ")
            
            if directory[4].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[4].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[4].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Employee, Food Services"
            
        case .ride:
            
            if directory[5].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[5].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[5].accessibility.joined(separator: ", ")
            
            if directory[5].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[5].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[5].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Employee, Ride Control"
      
        case .maintenance:
            
            if directory[6].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[6].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[6].accessibility.joined(separator: ", ")
            
            if directory[6].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[6].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[6].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Employee, Maintenance"
            
        case .manager:
            
            if directory[7].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[7].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            accessibility.text = directory[7].accessibility.joined(separator: ", ")
            
            if directory[7].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[7].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[7].discountPercentForMerchandise!)% Discount On Merch" }
        
            entrantType.text = "Manager"
            
        default: break 
        }

    }

    @IBAction func checkAccessAction(_ sender: UIButton) {
    
        performSegue(withIdentifier: "segue2", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        var thirdController = segue.destination as! AccessController

        thirdController.lastRecentButton = storeRecentButton

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
