//
//  FieldSurveysJSONLoader.swift
//  Field Survey
//
//  Created by Austin Beydler on 11/1/17.
//  Copyright © 2017 Austin Beydler. All rights reserved.
//

import Foundation

class FieldSurveysJSONLoader{
    
    class func load(filename: String) -> [FieldSurvey]{
        
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            
            observations = FieldSurveyJSONParser.parse(data)
        }
        
        return observations
        
    }
}
