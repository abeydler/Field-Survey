//
//  FieldSurvey.Swift
//  Field Survey
//
//  Created by Austin Beydler on 11/1/17.
//  Copyright © 2017 Austin Beydler. All rights reserved.
//

import Foundation

struct FieldSurvey {
    
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classificationName: String, title: String, description: String, date: Date){
        if let classiffication = Classification(rawValue: classificationName){
            self.init(classification: classiffication, title: title, description: description, date: date)
        }else{
            return nil
        }
    }
}
