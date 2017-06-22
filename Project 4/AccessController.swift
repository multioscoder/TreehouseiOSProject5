//
//  AccessController.swift
//  Project 4
//
//  Created by Mohamed Al Mohannadi on 6/11/17.
//  Copyright © 2017 Mohamed Al Mohannadi. All rights reserved.
//

import UIKit

class AccessController: UIViewController {

    var lastRecentButton: EntrantType = EntrantType.adult
    var lastProjectNumber = 0
    var lastCompany = ""

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createAlert(Title: String, Message: String) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert, animated: true, completion:  nil)
        
    }
    
    
    
    @IBOutlet weak var entrantTypeAccessLabel: UILabel!
    @IBOutlet weak var accessStatus: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        
        switch lastRecentButton {
        case .adult: entrantTypeAccessLabel.text = "Guest, Adult"
        case .child: entrantTypeAccessLabel.text = "Guest, Child"
        case .senior: entrantTypeAccessLabel.text = "Guest, Senior"
        case .vip: entrantTypeAccessLabel.text = "Guest, VIP"
        case .food: entrantTypeAccessLabel.text = "Employee, Food Services"
        case .ride: entrantTypeAccessLabel.text = "Employee, Ride Control"
        case .maintenance: entrantTypeAccessLabel.text = "Employee, Maintenance"
        case .manager: entrantTypeAccessLabel.text = "Manager"
        case .season: entrantTypeAccessLabel.text = "Guest, Season Pass"
            
        case .contract:
            
            switch lastProjectNumber {
            case 1001: entrantTypeAccessLabel.text = "Employee, Contract, Project 1001"
                case 1002: entrantTypeAccessLabel.text = "Employee, Contract, Project 1002"
                case 1003: entrantTypeAccessLabel.text = "Employee, Contract, Project 1003"
                case 2001: entrantTypeAccessLabel.text = "Employee, Contract, Project 2001"
                case 2002: entrantTypeAccessLabel.text = "Employee, Contract, Project 2002"
            default: break
            }
            
        case .vendor:
            
            switch lastCompany {
                case "Acme": entrantTypeAccessLabel.text = "Vendor, Acme"
                case "Orkin": entrantTypeAccessLabel.text = "Vendor, Orkin"
                case "Fedex": entrantTypeAccessLabel.text = "Vendor, Fedex"
                case "NW Electrical": entrantTypeAccessLabel.text = "Vendor, NW Electrical"
            default: break
            }
            
            
            
        default: break
            
            
            
        
    }
    }

    
    var accessGrantedColor: UIColor = UIColor(red: 5/255, green: 252/255, blue: 137/255, alpha: 1)
    var accessDeniedColor: UIColor = UIColor(red: 255/255, green: 100/255, blue: 150/255, alpha: 1)
    
    @IBAction func amusementSwipe(_ sender: UIButton) {
        
        switch lastRecentButton {
        case .adult: if directory[0].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .child: if directory[1].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .senior: if directory[2].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .vip: if directory[3].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .food: if directory[4].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .ride: if directory[5].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .maintenance: if directory[6].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area.") }
        case .manager: if directory[7].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .season: if directory[8].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        
        case .contract:
            
            switch lastProjectNumber {
            
            case 1001:
                
                if directory[9].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case 1002:
                
                if directory[10].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 1003:
                
                if directory[11].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2001:
                
                
                if directory[12].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2002:
                
              if directory[13].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
           
            }
            
            
        case .vendor:
            
            switch lastCompany {
                
                case "Acme":
                
                if directory[14].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                case "Orkin":
                
                                if directory[15].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
                case "Fedex":
                
                                if directory[16].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
                case "NW Electrical":
                
                                if directory[17].accessibility.contains("Amusement") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
                
                
            }
            
            
            
            
            
            
          default: break
        }
        
    }
    
    @IBAction func kitchenSwipe(_ sender: UIButton) {
        
        switch lastRecentButton {
        case .adult: if directory[0].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .child: if directory[1].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .senior: if directory[2].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .vip: if directory[3].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .food: if directory[4].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .ride: if directory[5].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .maintenance: if directory[6].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .manager: if directory[7].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                case .season: if directory[8].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
            
        case .contract:
            
            switch lastProjectNumber {
                
            case 1001:
                
                if directory[9].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case 1002:
                
                if directory[10].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 1003:
                
                if directory[11].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2001:
                
                
                if directory[12].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2002:
                
                if directory[13].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
            }
            
        case .vendor:
            
            switch lastCompany {
                
            case "Acme":
                
                if directory[14].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case "Orkin":
                
                if directory[15].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "Fedex":
                
                if directory[16].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "NW Electrical":
                
                if directory[17].accessibility.contains("Kitchen") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
                
                
            }

            
        default: break
        }
        
    }
    
    @IBAction func maintenanceSwipe(_ sender: UIButton) {
        
        switch lastRecentButton {
        case .adult: if directory[0].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .child: if directory[1].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .senior: if directory[2].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .vip: if directory[3].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .food: if directory[4].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .ride: if directory[5].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .maintenance: if directory[6].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area.") }
        case .manager: if directory[7].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                    case .season: if directory[8].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
            
        case .contract:
            
            switch lastProjectNumber {
                
            case 1001:
                
                if directory[9].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case 1002:
                
                if directory[10].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 1003:
                
                if directory[11].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2001:
                
                
                if directory[12].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2002:
                
                if directory[13].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
            }
            
        case .vendor:
            
            switch lastCompany {
                
            case "Acme":
                
                if directory[14].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case "Orkin":
                
                if directory[15].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "Fedex":
                
                if directory[16].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "NW Electrical":
                
                if directory[17].accessibility.contains("Maintenance") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
                
                
            }

            
        default: break
        }
        
    }

    @IBAction func officeSwipe(_ sender: UIButton) {
        
        switch lastRecentButton {
        case .adult: if directory[0].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .child: if directory[1].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .senior: if directory[2].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .vip: if directory[3].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .food: if directory[4].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .ride: if directory[5].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .maintenance: if directory[6].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .manager: if directory[7].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
             case .season: if directory[8].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
            
        case .contract:
            
            switch lastProjectNumber {
                
            case 1001:
                
                if directory[9].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case 1002:
                
                if directory[10].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 1003:
                
                if directory[11].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2001:
                
                
                if directory[12].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2002:
                
                if directory[13].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
            }
            
        case .vendor:
            
            switch lastCompany {
                
            case "Acme":
                
                if directory[14].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case "Orkin":
                
                if directory[15].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "Fedex":
                
                if directory[16].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "NW Electrical":
                
                if directory[17].accessibility.contains("Office Areas") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
                
                
            }

            
        default: break
        }
        
    }
    
    @IBAction func rideControlSwipe(_ sender: UIButton) {
        
        switch lastRecentButton {
        case .adult: if directory[0].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .child: if directory[1].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .senior: if directory[2].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .vip: if directory[3].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .food: if directory[4].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .ride: if directory[5].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .maintenance: if directory[6].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .manager: if directory[7].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
        case .season: if directory[8].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }

            
        case .contract:
            
            switch lastProjectNumber {
                
            case 1001:
                
                if directory[9].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case 1002:
                
                if directory[10].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 1003:
                
                if directory[11].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2001:
                
                
                if directory[12].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case 2002:
                
                if directory[13].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
            }
            
        case .vendor:
            
            switch lastCompany {
                
            case "Acme":
                
                if directory[14].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            case "Orkin":
                
                if directory[15].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "Fedex":
                
                if directory[16].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
                
            case "NW Electrical":
                
                if directory[17].accessibility.contains("Ride Control") { accessStatus.text = "Access Granted"; accessStatus.backgroundColor = accessGrantedColor } else { accessStatus.text = "Access Denied"; createAlert(Title: "Access Denied", Message: "You are not allowed to enter in this area."); accessStatus.backgroundColor = accessDeniedColor }
                
            default: break
                
                
                
            }
            

            
        default: break
        }
        
    }
    
    @IBAction func viewPass(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue3", sender: self)
        
    }
    

    

    

}
