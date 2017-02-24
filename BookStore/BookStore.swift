//
//  BookStore.swift
//  BookStore
//
//  Created by Kenneth Debruyn on 23/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import Foundation


class BookStore {
    
    
    let name: String
    var bookCollections: [BookCollection]
    
    init(name: String, bookCollections: [BookCollection]) {
        self.name = name
        self.bookCollections = bookCollections
    }


    // MARK: - Internal Functions
    func start() {
        displayIntroduction()
        greetCustomer()
        determineWriter()
    }
    
    func add(bookCollection: BookCollection) {
        bookCollections.append(bookCollection)
    }
    
    
    // MARK: - Private Functions
    private func responseTo(message: String) -> String {
        print(message)
        return getln()
    }
    
    private func displayIntroduction() {
        print("Welcome to the \(self.name)")
    }
    
    private func greetCustomer() {
        let name = responseTo(message: "\nWhat's your name?")
        print("Nice to meet you, \(name).")
    }
    
    private func printBooks(fromAuthor author: String){
        for collect in bookCollections {
            if collect.named(author) {
                collect.printBooks()
            }
        }
    }
    
    private func validateDecision(forDecision decision: String) -> Bool {
        
        return self.bookCollections.reduce(false, {$1.named(decision) || $0 == true})

//        for collect in bookCollections {
//            if collect.named(decision) {
//                return true
//            }
//        }
//        return false
    }
    
    private func determineWriter() {
        let decision = responseTo(message: "\nWriter?").capitalized(with: .current)
        
        if validateDecision(forDecision: decision) {
            for collect in bookCollections {
                if collect.named(decision) {
                    printBooks(fromAuthor: decision)
                }
            }
        } else {
            print("Sorry, no books availabable for this writer")
        }
    }
}


