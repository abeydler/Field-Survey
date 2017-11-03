//
//  FieldSurveryJSONParser.swift
//  Field Survey
//
//  Created by Austin Beydler on 11/1/17.
//  Copyright © 2017 Austin Beydler. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser{
    
    static let dateDormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey]{
        var fieldSurveys = [FieldSurvey]()
        
        dateDormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"
        {
            if let observations = root["observations"] as? [Any]{
                for observation in observations{
                    if let observation = observation as? [String: String]{
                        if let classificationName = observation["classification"],
                        let title = observation["title"],
                        let description = observation["description"],
                        let dateString = observation["date"],
                        let date = dateDormatter.date(from: dateString){
                            
                            if let fieldSurvey = FieldSurvey(classificationName: classificationName, title: title, description: description, date: date){
                                fieldSurveys.append(fieldSurvey)
                                
                                
                            }
                            
                        }
                    }
                }
            }
        }
        
        return fieldSurveys
        
    }
    
    
    
}
