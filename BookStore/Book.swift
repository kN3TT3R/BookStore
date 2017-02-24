//
//  Book.swift
//  BookStore
//
//  Created by Kenneth Debruyn on 21/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import Foundation


class Book {
    
    let title: String
    let author: String
    let publicationYear: Int
    let price: Double
    
    init(title: String, author: String, publicationYear: Int, price: Double) {
        self.title = title
        self.author = author
        self.publicationYear = publicationYear
        self.price = price
    }
    
    func printBookData() {
        print("Title: \(self.title) - Author: \(self.author) - Year: \(self.publicationYear) - Price: \(self.price)")
    }
    
    func hasTitle(_ title: String) -> Bool {
        if self.title == title {
            return true
        } else {
            return false
        }
    }
}


