//
//  BookCollection.swift
//  BookStore
//
//  Created by Kenneth Debruyn on 23/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.


import Foundation


class BookCollection {
    
    let title: String
    var books: [Book]
    
    init(title: String, books: [Book]) {
        self.title = title
        self.books = books
    }


    // MARK: - Functions
    func add(book: Book) {
        books.append(book)
    }
    
    func hasBook(named bookTitle: String) -> Bool {
        for book in books {
            if book.hasTitle(bookTitle) { return true }
        }
        return false
    }
    
    func named(_ bookCollectionTitle: String) -> Bool {
        if self.title == bookCollectionTitle {
            return true
        } else {
            return false
        }
    }
    
    func hasBooks() -> Bool {
        return !books.isEmpty
    }
    
    func amountBooks() -> Int {
        return books.count
    }
    
    func createStringOfBookTitles() -> String {
        let bookTitles = books.map({"\($0.title)"}).joined(separator: ", ")
        return bookTitles
    }
    
    func printBooks() {
        for book in books {
            book.printBookData()
        }
    }
    
}


