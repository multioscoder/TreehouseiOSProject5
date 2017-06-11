//
//  Error Handling.swift
//  Project 4
//
//  Created by Mohamed Al Mohannadi on 6/10/17.
//  Copyright © 2017 Mohamed Al Mohannadi. All rights reserved.
//

enum PassError: Error {
  
    case invalidData(description: String)
    case requiredData(description: String)

}

