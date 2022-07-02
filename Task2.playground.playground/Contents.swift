import UIKit


protocol Library {
    var name: String {get set}
    var city: String {get set}
    var bookCount: Int {get set}
    
    func greetingVoice() -> (Void)
    
}


public class LibraryKzn: Library {
    var name = "National Library of the Republic of Tatarstan"
    var city = "Kazan"
    var bookCount = 2_000_000
    
    func greetingVoice() {
        print("Welcome to the \(name)! There you can find \(bookCount) books")
    }
}


enum Genre {
    case scientific
    case fantasy
    case romance
    case horror
    case medicine
    case dictionary
}


enum Location {
    case groundfloor
    case firstfloor
    case secondfloor
}


protocol Info {
    func information() -> (Void)
}


public class Book: Info {
    var bookName: String
    var genre: Genre
    var location: Location
    
    init(name: String, genre: Genre, location: Location) {
        self.bookName = name
        self.genre = genre
        self.location = location
    }
    
    func information() {
        print("\(genre) book \(bookName) is on the \(location)")
    }
}


protocol Person {
    var name: String { get set }
    func makeSound() -> (Void)
}


enum Position {
    case guardian
    case librarian
    case cleaner
    case visitor
}


class Employee: Person {
    var name: String
    var age: Int
    var position: Position
    
    init(name: String, age: Int, position: Position) {
        self.name = name
        self.age = age
        self.position = position
    }
    
    func makeSound() {
        print("Hello! How can I help you?")
    }
}


class Librarian: Employee {
    var favGenre: Genre
    
    init(name: String, age: Int, favGenre: Genre) {
        self.favGenre = favGenre
        super.init(name: name, age: age, position: .librarian)
    }
    
    override func makeSound() {
        print("Hi! Which genre book can I recommend you?")
    }
}


class Visitor: Person {
    var name: String
    var age: Int
    var favGenre: Genre
    
    init(nameVis: String, ageVis: Int, genre: Genre) {
        name = nameVis
        age  = ageVis
        favGenre = genre
    }
    
    func makeSound() {
        print("Excuse me, I need a book")
    }
}


enum Furniture {
    case table
    case chair
}


struct FreeFurniture {
    var furniture: Furniture
    var location: Location
}


enum PublishingOffice {
    case nationalGeographic
    case tele7
    case winx
    case fashion
}


struct Magazine: Info {
    var publishingOffice: PublishingOffice
    var publicationDate: Int
    var location: Location
    
    init(publishingOffice: PublishingOffice, publicationDate: Int, location: Location) {
        self.publishingOffice = publishingOffice
        self.publicationDate = publicationDate
        self.location = location
    }
    
    func information() {
        print("\(publishingOffice) magazine by \(publicationDate) is on the \(location)")
    }
}


enum ChildrensAuthors {
    case Zoshenko
    case Uspensky
    case Oster
    case Chukovsky
}


struct ChildrensBook: Info {
    var name: String
    var author: ChildrensAuthors
    var publicationDate: Int
    var location: Location
    
    init(name: String, author: ChildrensAuthors, publicationDate: Int, location: Location) {
        self.name = name
        self.author = author
        self.publicationDate = publicationDate
        self.location = location
    }
    
    func information() {
        print("Dear friend, \(name) book by \(author) is on the \(location)")
    }
}
  

var lab = Librarian(name: "asd", age: 123, favGenre: .scientific)

print(lab.position)
