import UIKit


print("Problem 1")
enum DayOfWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

let day: DayOfWeek = .saturday
weekDay(day: day)

func weekDay(day: DayOfWeek) {
    switch day {
    /*
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        print("\(day) is a weekday.")
    */
    case .saturday, .sunday:
        print("\(day) means it is the weekend.")
    default:
        print("\(day) is a weekday.")
    }
}

print("Problem 2")
enum Weather {
    case sunny(Double)
    case cloudy(Double)
    case rainy(Double)
    case snowy(Double)
}

let tempeture = Weather.rainy(8)
dressAppropiately(tempeture: tempeture)
//print(tempeture)

func dressAppropiately(tempeture: Weather) {
    switch tempeture{
    case .sunny:
    print("It is \(tempeture), wear a T-Shirt.")
    case .cloudy:
    print("It is \(tempeture), wear a long sleeve.")
    case .rainy:
    print("I'd advise you to bring an umbrella, raincoat and rainboots.")
    case .snowy:
    print("It is \(tempeture), and unless you are Elsa, wear something warm.")
    }
}

print("Problem 3")
struct Book {
    let title: String
    let author: String
    let publicationYear: Int
}
let frankenstein = Book(title:"Frankenstein", author:"Mary Shelley", publicationYear: 1818)
let dracula = Book(title: "Dracula", author: "Bram Stoker", publicationYear: 1897)
let coraline = Book(title: "Coraline", author: "Neil Gaiman", publicationYear: 2002)
var bookArray: [Book] = []
bookArray.append(frankenstein)
bookArray.append(dracula)
bookArray.append(coraline)
let year = 2000
let chosenBooks = guessYear(bookArray: bookArray, year: year)
//print(chosenBooks)
for Book in chosenBooks {
    print(Book)
}

func guessYear(bookArray: Array<Book>, year: Int) -> Array<Book> {
    var chosenBooks: [Book] = []
    for Book in bookArray {
        if Book.publicationYear > year {
            chosenBooks.append(Book)
        }
    }
    return chosenBooks
}

/*
print("Problem 4")
struct BankAccount {
    let holderName: String
    let accountNumber: Int
    var balance: Double

    init() {
        self.balance = 1000.0
    }
    
    func withdraw(amount: Double) -> WithdrawResult{
        if amount <= balance {
            balance -= amount
            return .success(newBalance: balance)
        } else {
            return .error(message: "You don't have enough money.")
        }
    }
    enum WithdrawResult {
        case success(newBalance: Double)
        case error(message: String)
    }
    
    let result = withdraw(amount: 1001)
    switch result {
    case .success():
    print("Your balance is \(newBalance)")
    case .error
    }
    
    func deposit(amount: Double) {
        balance += amount
        print("Your balance is \(newBalance)")
    }
}
 */
