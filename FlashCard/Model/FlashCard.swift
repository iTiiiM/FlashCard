//
//  FlashCard.swift
//  FlashCard
//
//  Created by Piyatat  Thianboonsong on 3/4/2562 BE.
//  Copyright © 2562 iTiiiM. All rights reserved.
//

import Foundation

class FlashCard{
    var words: [String]
    var meaning: [String]
    init(words: [String], meaning: [String]) {
        self.words = words
        self.meaning = meaning
    }
}
