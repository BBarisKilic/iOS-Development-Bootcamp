//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Bülent Barış Kılıç on 14.08.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
