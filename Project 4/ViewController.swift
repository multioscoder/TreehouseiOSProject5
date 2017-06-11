//
//  ViewController.swift
//  Project 4
//
//  Created by Mohamed Al Mohannadi on 6/8/17.
//  Copyright © 2017 Mohamed Al Mohannadi. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var sub1: UIButton!
    @IBOutlet weak var sub2: UIButton!
    @IBOutlet weak var sub3: UIButton!
    @IBOutlet weak var sub4: UIButton!

    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var ssn: UITextField!
    @IBOutlet weak var projectNumber: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zipcode: UITextField!
    
    @IBOutlet weak var generatePassOutlet: UIButton!
    
    var recentButton = EntrantType.adult
    
    
    var unlockedColor: UIColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 0.1)
    var lockedColor: UIColor = UIColor(red: 255/255, green: 100/255, blue: 150/255, alpha: 0.8)
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == city || textField == state || textField == zipcode {
        
        moveTextField(textField: city, moveDistance: -250, up: true)
        
        }

    }
    

    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == city || textField == state || textField == zipcode {
        moveTextField(textField: city, moveDistance: -250, up: false)
        
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func moveTextField(textField: UITextField, moveDistance: Int, up: Bool) {
        let moveDuration = 0.5
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        
        UIView.beginAnimations("animateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dateOfBirth.delegate = self
        self.ssn.delegate = self
        self.projectNumber.delegate = self
        self.firstName.delegate = self
        self.lastName.delegate = self
        self.company.delegate = self
        self.address.delegate = self
        self.city.delegate = self
        self.state.delegate = self
        self.zipcode.delegate = self
        
        sub1.isHidden = true
        sub2.isHidden = true
        sub3.isHidden = true
        sub4.isHidden = true
        
        dateOfBirth.backgroundColor = lockedColor
        ssn.backgroundColor = lockedColor
        projectNumber.backgroundColor = lockedColor
        firstName.backgroundColor = lockedColor
        lastName.backgroundColor = lockedColor
        company.backgroundColor = lockedColor
        address.backgroundColor = lockedColor
        city.backgroundColor = lockedColor
        state.backgroundColor = lockedColor
        zipcode.backgroundColor = lockedColor
        
        dateOfBirth.isUserInteractionEnabled = false
        ssn.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = false
        lastName.isUserInteractionEnabled = false
        company.isUserInteractionEnabled = false
        address.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipcode.isUserInteractionEnabled = false
        
    }

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
    
    @IBAction func guestAction(_ sender: UIButton) {
    
        sub1.isHidden = false
        sub2.isHidden = false
        sub3.isHidden = false
        sub4.isHidden = false
        
        sub1.setTitle("Child", for: .normal)
        sub2.setTitle("Adult", for: .normal)
        sub3.setTitle("Senior", for: .normal)
        sub4.setTitle("VIP", for: .normal)
        
        
    
    }
    
    @IBAction func employeeAction(_ sender: UIButton) {
    
        sub1.isHidden = false
        sub2.isHidden = false
        sub3.isHidden = false
        sub4.isHidden = false
        
        sub1.setTitle("Food", for: .normal)
        sub2.setTitle("Ride", for: .normal)
        sub3.setTitle("Maintenance", for: .normal)
        sub4.setTitle("Contract", for: .normal)
    
    }

    // To modify the information requirments for a specific Entrant such as manager, find the @IBAction for that entrant and simply change from true to false (or vise versa) and from lockedColor to unlockedColor (or vice versa)
    // The app will still update the new required information and include them in the Pass Ticket.
    
    @IBAction func managerAction(_ sender: UIButton) {
    
        sub1.isHidden = true
        sub2.isHidden = true
        sub3.isHidden = true
        sub4.isHidden = true
        
        dateOfBirth.isUserInteractionEnabled = false
        ssn.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = true
        lastName.isUserInteractionEnabled = true
        company.isUserInteractionEnabled = false
        address.isUserInteractionEnabled = true
        city.isUserInteractionEnabled = true
        state.isUserInteractionEnabled = true
        zipcode.isUserInteractionEnabled = true
        
        dateOfBirth.backgroundColor = lockedColor
        ssn.backgroundColor = lockedColor
        projectNumber.backgroundColor = lockedColor
        firstName.backgroundColor = unlockedColor
        lastName.backgroundColor = unlockedColor
        company.backgroundColor = lockedColor
        address.backgroundColor = unlockedColor
        city.backgroundColor = unlockedColor
        state.backgroundColor = unlockedColor
        zipcode.backgroundColor = unlockedColor
    
        // lastButtonClicked.text = "manager"
        
        recentButton = EntrantType.manager
    
    }
    
    @IBAction func vendorAction(_ sender: UIButton) {
    
        sub1.isHidden = true
        sub2.isHidden = true
        sub3.isHidden = true
        sub4.isHidden = true
        
        dateOfBirth.isUserInteractionEnabled = true
        ssn.isUserInteractionEnabled = false
        projectNumber.isUserInteractionEnabled = false
        firstName.isUserInteractionEnabled = true
        lastName.isUserInteractionEnabled = true
        company.isUserInteractionEnabled = true
        address.isUserInteractionEnabled = false
        city.isUserInteractionEnabled = false
        state.isUserInteractionEnabled = false
        zipcode.isUserInteractionEnabled = false
        
        dateOfBirth.backgroundColor = unlockedColor
        ssn.backgroundColor = lockedColor
        projectNumber.backgroundColor = lockedColor
        firstName.backgroundColor = unlockedColor
        lastName.backgroundColor = unlockedColor
        company.backgroundColor = unlockedColor
        address.backgroundColor = lockedColor
        city.backgroundColor = lockedColor
        state.backgroundColor = lockedColor
        zipcode.backgroundColor = lockedColor
        
        recentButton = EntrantType.vendor
        
    }
    
    @IBAction func sub1Action(_ sender: UIButton) {
        
        if sub1.currentTitle == "Child" {
            dateOfBirth.isUserInteractionEnabled = true
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = false
            lastName.isUserInteractionEnabled = false
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipcode.isUserInteractionEnabled = false
            
            dateOfBirth.backgroundColor = unlockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = lockedColor
            lastName.backgroundColor = lockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = lockedColor
            city.backgroundColor = lockedColor
            state.backgroundColor = lockedColor
            zipcode.backgroundColor = lockedColor
            
            recentButton = EntrantType.child
        }
        
        if sub1.currentTitle == "Food" {
            dateOfBirth.isUserInteractionEnabled = false
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipcode.isUserInteractionEnabled = true
            
            dateOfBirth.backgroundColor = lockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = unlockedColor
            lastName.backgroundColor = unlockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = unlockedColor
            city.backgroundColor = unlockedColor
            state.backgroundColor = unlockedColor
            zipcode.backgroundColor = unlockedColor
            
            recentButton = EntrantType.food
        }
        
        
        
    }
    @IBAction func sub2Action(_ sender: UIButton) {
        
        if sub2.currentTitle == "Adult" {
            dateOfBirth.isUserInteractionEnabled = false
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = false
            lastName.isUserInteractionEnabled = false
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipcode.isUserInteractionEnabled = false
            
            dateOfBirth.backgroundColor = lockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = lockedColor
            lastName.backgroundColor = lockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = lockedColor
            city.backgroundColor = lockedColor
            state.backgroundColor = lockedColor
            zipcode.backgroundColor = lockedColor
            
            recentButton = EntrantType.adult
        }
        
        if sub2.currentTitle == "Ride" {
            dateOfBirth.isUserInteractionEnabled = false
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipcode.isUserInteractionEnabled = true
            
            dateOfBirth.backgroundColor = lockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = unlockedColor
            lastName.backgroundColor = unlockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = unlockedColor
            city.backgroundColor = unlockedColor
            state.backgroundColor = unlockedColor
            zipcode.backgroundColor = unlockedColor
            
            recentButton = EntrantType.ride
        }
        
    }
    
    
    @IBAction func sub3Action(_ sender: UIButton) {
        
        if sub3.currentTitle == "Senior" {
            dateOfBirth.isUserInteractionEnabled = true
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipcode.isUserInteractionEnabled = false
            
            dateOfBirth.backgroundColor = unlockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = unlockedColor
            lastName.backgroundColor = unlockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = lockedColor
            city.backgroundColor = lockedColor
            state.backgroundColor = lockedColor
            zipcode.backgroundColor = lockedColor
            
            recentButton = EntrantType.senior
            
        }
        
        if sub3.currentTitle == "Maintenance" {
            dateOfBirth.isUserInteractionEnabled = false
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipcode.isUserInteractionEnabled = true
            
            dateOfBirth.backgroundColor = lockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = unlockedColor
            lastName.backgroundColor = unlockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = unlockedColor
            city.backgroundColor = unlockedColor
            state.backgroundColor = unlockedColor
            zipcode.backgroundColor = unlockedColor
            
            recentButton = EntrantType.maintenance
        }
        
    }
    @IBAction func sub4Action(_ sender: UIButton) {
    
        
        if sub4.currentTitle == "VIP" {
            dateOfBirth.isUserInteractionEnabled = false
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = false
            lastName.isUserInteractionEnabled = false
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = false
            city.isUserInteractionEnabled = false
            state.isUserInteractionEnabled = false
            zipcode.isUserInteractionEnabled = false
            
            dateOfBirth.backgroundColor = lockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = lockedColor
            lastName.backgroundColor = lockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = lockedColor
            city.backgroundColor = lockedColor
            state.backgroundColor = lockedColor
            zipcode.backgroundColor = lockedColor
            
            recentButton = EntrantType.vip
        }
        
        if sub4.currentTitle == "Contract" {
            dateOfBirth.isUserInteractionEnabled = false
            ssn.isUserInteractionEnabled = false
            projectNumber.isUserInteractionEnabled = false
            firstName.isUserInteractionEnabled = true
            lastName.isUserInteractionEnabled = true
            company.isUserInteractionEnabled = false
            address.isUserInteractionEnabled = true
            city.isUserInteractionEnabled = true
            state.isUserInteractionEnabled = true
            zipcode.isUserInteractionEnabled = true
            
            dateOfBirth.backgroundColor = lockedColor
            ssn.backgroundColor = lockedColor
            projectNumber.backgroundColor = lockedColor
            firstName.backgroundColor = unlockedColor
            lastName.backgroundColor = unlockedColor
            company.backgroundColor = lockedColor
            address.backgroundColor = unlockedColor
            city.backgroundColor = unlockedColor
            state.backgroundColor = unlockedColor
            zipcode.backgroundColor = unlockedColor
            
            recentButton = EntrantType.contract
        }
        
        
    }
    

    
   // MARK: - The function below throws errors. Experiemnt with this by deliberatly omitting a required textfield (indicated with a faded green background) and / or putting alphabet into the Zip Code field as well as inputting numbers into the other fields other than the street address field. When clicking the "Generate Pass" Button, a pass won't be generated until no errors are thrown and alerts will keep popping up until the user ensures to handle the fields correctly
    
    
    func errorHand() throws {
        switch recentButton {
            
        case .child: if dateOfBirth.text == "" { throw PassError.requiredData(description: "Date of Birth Required") }
            
        case .senior: if dateOfBirth.text == "" || firstName.text == "" || lastName.text == "" { throw PassError.requiredData(description: "Date of Birth Required") }
            
        case .food: if firstName.text == "" || lastName.text == "" || address.text == "" || city.text == "" || zipcode.text == "" || state.text == "" { throw PassError.requiredData(description: "Please make sure all the information is provided.") }
            
        case .ride: if firstName.text == "" || lastName.text == "" || address.text == "" || city.text == "" || zipcode.text == "" || state.text == "" { throw PassError.requiredData(description: "Please make sure all the information is provided.") }
            
        case .contract: if firstName.text == "" || lastName.text == "" || address.text == "" || city.text == "" || zipcode.text == "" || state.text == "" { throw PassError.requiredData(description: "Please make sure all the information is provided.") }
            
        case .maintenance: if firstName.text == "" || lastName.text == "" || address.text == "" || city.text == "" || zipcode.text == "" || state.text == "" { throw PassError.requiredData(description: "Please make sure all the information is provided.") }
            
        case .manager: if firstName.text == "" || lastName.text == "" || address.text == "" || city.text == "" || zipcode.text == "" || state.text == "" { throw PassError.requiredData(description: "Please make sure all the information is provided.") }
            
        default: break
            
            // Vendor will be taken care of in Project 5
            
        }
        
        let decimalCharacters = CharacterSet.decimalDigits
        
        let decimalRangeForFirstName = firstName.text?.rangeOfCharacter(from: decimalCharacters)
        let decimalRangeForLastName = lastName.text?.rangeOfCharacter(from: decimalCharacters)
        let decimalRangeForAddress = address.text?.rangeOfCharacter(from: decimalCharacters)
        let decimalRangeForState = state.text?.rangeOfCharacter(from: decimalCharacters)
        let decimalRangeForCity = city.text?.rangeOfCharacter(from: decimalCharacters)
        let decimalRangeForZipCode = zipcode.text?.rangeOfCharacter(from: decimalCharacters)

        let alpha = NSCharacterSet.letters
        let zipcodeText = zipcode.text
        let range = zipcodeText?.rangeOfCharacter(from: alpha)
 
        switch recentButton {
            
        case .senior: if decimalRangeForFirstName != nil || decimalRangeForLastName != nil  { throw PassError.invalidData(description: "The first and last names cannot contain numbers") }
            
        case .food: if decimalRangeForFirstName != nil || decimalRangeForLastName != nil || decimalRangeForCity != nil || decimalRangeForState != nil || range != nil { throw PassError.invalidData(description: "Please make sure that only the zipcode and the street address contain numbers and that the zipcode only contains numbers") }
            
        case .ride: if decimalRangeForFirstName != nil || decimalRangeForLastName != nil || decimalRangeForCity != nil || decimalRangeForState != nil || range != nil { throw PassError.invalidData(description: "Please make sure that only the zipcode and the street address contain numbers and that the zipcode only contains numbers") }
            
        case .contract: if decimalRangeForFirstName != nil || decimalRangeForLastName != nil || decimalRangeForCity != nil || decimalRangeForState != nil || range != nil { throw PassError.invalidData(description: "Please make sure that only the zipcode and the street address contain numbers and that the zipcode only contains numbers") }
            
        case .maintenance: if decimalRangeForFirstName != nil || decimalRangeForLastName != nil || decimalRangeForCity != nil || decimalRangeForState != nil || range != nil { throw PassError.invalidData(description: "Please make sure that only the zipcode and the street address contain numbers and that the zipcode only contains numbers") }
            
        case .manager: if decimalRangeForFirstName != nil || decimalRangeForLastName != nil || decimalRangeForCity != nil || decimalRangeForState != nil || range != nil { throw PassError.invalidData(description: "Please make sure that only the zipcode and the street address contain numbers and that the zipcode only contains numbers") }
            
        default: break

    }
        
    }

    
    func rethrowableFunction(function: () throws -> ()) rethrows {
    
        do {
            try function()
        }
        
        catch PassError.requiredData(let desc1) {
            createAlert(Title: "Required Data", Message: desc1)
        }
        
        catch PassError.invalidData(let desc2) {
            createAlert(Title: "Invalid Data", Message: desc2)
        }
    
    }
    
    
@IBAction func generatePass(_ sender: UIButton) {

    try? rethrowableFunction(function: errorHand)
    
    performSegue(withIdentifier: "segue", sender: self)
    
    }

    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        var secondController = segue.destination as! PassController


        
       if firstName.text != "" && lastName.text != "" {
      secondController.storeFirstName = firstName.text!
        secondController.storeLastName = lastName.text!
        }

        else

        { secondController.storeFirstName = ""
        secondController.storeLastName = ""}
        
        if dateOfBirth.text != "" {
            secondController.storebirthDate = dateOfBirth.text!
        } else {
            secondController.storebirthDate = ""
        }
        
        if address.text != "" {
            secondController.storeStreetAddress = address.text!
        } else {
            secondController.storeStreetAddress = ""
        }
        
        if city.text != "" {
            secondController.storeCityAddress = city.text!
        } else {
            secondController.storeCityAddress = ""
        }
        
        
        if state.text != "" {
            secondController.storeStateAddress = state.text!
        } else {
            secondController.storeStateAddress = ""
        }
        
        if zipcode.text != "" {
            secondController.storeZipCode = zipcode.text!
        } else {
            secondController.storeZipCode = ""
        }
        
        secondController.storeRecentButton = recentButton
        
    }
    

    
    // MARK: - Dissmiss Keyboard
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}
 
