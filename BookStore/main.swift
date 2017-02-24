//
//  main.swift
//  BookStore
//
//  Created by Kenneth Debruyn on 21/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//


import Foundation


var harryPotterData = BookCollection(title: "Harry", books: [])
var danBrownData = BookCollection(title: "Brown", books: [])

harryPotterData.add(book: Book(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", publicationYear: 2017, price: 10.00))
harryPotterData.add(book: Book(title: "Harry Potter and the Chamber of Secrets", author: "J. K. Rowling", publicationYear: 2014, price: 9.00))
harryPotterData.add(book: Book(title: "Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", publicationYear: 2014, price: 8.00))
harryPotterData.add(book: Book(title: "Harry Potter and the Goblet of Water", author: "J. K. Rowling", publicationYear: 2015, price: 7.00))

danBrownData.add(book: Book(title: "Origin", author: "Dan Brown", publicationYear: 2017, price: 6.00))
danBrownData.add(book: Book(title: "Inferno", author: "Dan Brown", publicationYear: 2016, price: 5.00))
danBrownData.add(book: Book(title: "The lost symbol", author: "Dan Brown", publicationYear: 2015, price: 4.00))
danBrownData.add(book: Book(title: "The Da Vinci code", author: "Dan Brown", publicationYear: 2013, price: 3.00))
danBrownData.add(book: Book(title: "Angels and demons", author: "Dan Brown", publicationYear: 2012, price: 2.00))

var myStore = BookStore(name: "MyBookstore", bookCollections: [harryPotterData, danBrownData])
myStore.start()





















