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
    @IBOutlet weak var discountFood: UILabel!
    @IBOutlet weak var discountMerch: UILabel!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var cityAddress: UILabel!
    @IBOutlet weak var stateAddress: UILabel!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var ssnLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var ssnBar: UILabel!
    @IBOutlet weak var companyBar: UILabel!
    @IBOutlet weak var visitDate: UILabel!
    @IBOutlet weak var visitDateBar: UILabel!

    var storeFirstName: String = ""
    var storeLastName: String = ""
    var storeEntrantType: String = ""
    var storebirthDate: String = ""
    var storeStreetAddress: String = ""
    var storeCityAddress: String = ""
    var storeStateAddress: String = ""
    var storeZipCode: String = ""
    var storeCompany = ""
    var storeSSN = ""
    var storeDateOfVisit = ""
    
    var storeRecentButton: EntrantType = EntrantType.adult
    
    var storeProjectNumber = 0
    
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
    
        if storeCompany != "" { companyLabel.text = storeCompany } else {  companyLabel.isHidden = true; companyBar.isHidden = true  }
        if storeSSN != "" { ssnLabel.text = storeSSN } else { ssnLabel.isHidden = true; ssnBar.isHidden = true  }
        
        if storeDateOfVisit != "" { visitDate.text = storeDateOfVisit  } else {  visitDate.isHidden = true; visitDateBar.isHidden = true }
        
        if storeStateAddress == "" { streetAddress.isHidden = true; zipCode.isHidden = true; cityAddress.isHidden = true; stateAddress.isHidden = true }

        switch storeRecentButton {
        
        case .adult:
            
            if directory[0].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true}
            if directory[0].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            
            
            if directory[0].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[0].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[0].discountPercentForMerchandise!)% Discount On Merch" }

            
            
            
            
            entrantType.text = "Guest, Adult"
            
        case .child:
            
            if directory[1].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[1].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            
            if directory[1].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true} else { discountFood.text = "\(directory[1].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[1].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, Child"
            
            streetAddress.isHidden = true
            cityAddress.isHidden = true
            stateAddress.isHidden = true
            zipCode.isHidden = true
            
        case .senior:
            
            if directory[2].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[2].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true}

            if directory[2].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[2].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[2].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, Senior"
            
            streetAddress.isHidden = true
            cityAddress.isHidden = true
            stateAddress.isHidden = true
            zipCode.isHidden = true
            
        case .vip:
            
            if directory[3].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[3].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            
            if directory[3].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[3].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[3].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, VIP"
            
            streetAddress.isHidden = true
            cityAddress.isHidden = true
            stateAddress.isHidden = true
            zipCode.isHidden = true
            
        case .food:
            
            if directory[4].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[4].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            
            if directory[4].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[4].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[4].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Employee, Food Services"
            
        case .ride:
            
            if directory[5].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[5].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            
            if directory[5].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[5].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[5].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Employee, Ride Control"
      
        case .maintenance:
            
            if directory[6].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[6].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }

            if directory[6].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[6].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[6].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Employee, Maintenance"
            
        case .manager:
            
            if directory[7].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[7].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
            
            if directory[7].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[7].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[7].discountPercentForMerchandise!)% Discount On Merch" }
        
            entrantType.text = "Manager"
            
        case .contract:
            
            switch storeProjectNumber {
            
            
            case 1001:
                
                
                if directory[9].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                if directory[9].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                
                if directory[9].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[9].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[9].discountPercentForMerchandise!)% Discount On Merch" }
                
                entrantType.text = "Employee, Contract, Project 1001"
                
                
                
            case 1002:
                
                if directory[10].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                if directory[10].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                
                if directory[10].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[10].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[10].discountPercentForMerchandise!)% Discount On Merch" }
                
                entrantType.text = "Employee, Contract, Project 1002"
                
                
            case 1003:
                
                if directory[11].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                if directory[11].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                
                if directory[11].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[11].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[11].discountPercentForMerchandise!)% Discount On Merch" }
                
                entrantType.text = "Employee, Contract, Project 1003"
                
            case 2001:
                
                if directory[12].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                if directory[12].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                
                if directory[12].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[12].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[12].discountPercentForMerchandise!)% Discount On Merch" }
                
                entrantType.text = "Employee, Contract, Project 2001"
                
            case 2002:
                
                if directory[13].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                if directory[13].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                
                if directory[13].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[13].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[13].discountPercentForMerchandise!)% Discount On Merch" }
                
                entrantType.text = "Employee, Contract, Project 2002"
                
            default: break
                
                
            }
            
        case .vendor:
            
            switch storeCompany {
                
                case "Acme":
                
                
                    if directory[14].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                    if directory[14].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                   
                    
                    if directory[14].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[14].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[14].discountPercentForMerchandise!)% Discount On Merch" }
                    
                    entrantType.text = "Vendor, Acme"
                
                
                case "Orkin":
                
                    if directory[15].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                    if directory[15].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                    
                    if directory[15].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[15].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[15].discountPercentForMerchandise!)% Discount On Merch" }
                    
                    entrantType.text = "Vendor, Orkin"
                
                
                case "Fedex":
                
                    if directory[16].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                    if directory[16].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                    
                    if directory[16].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[16].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[16].discountPercentForMerchandise!)% Discount On Merch" }
                    
                    entrantType.text = "Vendor, Fedex"
                
                case "NW Electrical":
                
                    if directory[17].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
                    if directory[17].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
                
                    if directory[17].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[17].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[17].discountPercentForMerchandise!)% Discount On Merch" }
                    
                    entrantType.text = "Vendor, NW Electrical"
                
                
            default: break
                
            }
    
      
        case .season:
            
            if directory[8].canAccessAllRides == true { unlimitedRides.text = "Unlimited Rides" } else { unlimitedRides.isHidden = true }
            if directory[8].isAbleToSkipLines == true { fastTrack.text = "Fast Track" } else { fastTrack.isHidden = true }
    
            
            if directory[8].discount == false { discountFood.isHidden = true; discountMerch.isHidden = true } else { discountFood.text = "\(directory[8].discountPercentForFood!)% Discount On Food"; discountMerch.text = "\(directory[8].discountPercentForMerchandise!)% Discount On Merch" }
            
            entrantType.text = "Guest, Season Pass"
            
            
        default: break
        
        }

    }

    @IBAction func checkAccessAction(_ sender: UIButton) {
    
        performSegue(withIdentifier: "segue2", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        var thirdController = segue.destination as! AccessController

        thirdController.lastRecentButton = storeRecentButton

        thirdController.lastProjectNumber = storeProjectNumber
        
        thirdController.lastCompany = storeCompany
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
