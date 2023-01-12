import UIKit

// Struct

struct TableReservation {
    var name: String
    let tableNumber: Int
    mutating func updateBooking(updatedName: String) {
        name = updatedName
    }
}

var johnBooking = TableReservation(
    name: "John",
    tableNumber: 1
)

print(johnBooking)

johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)


// Class

class LocalFile {
    let name1: String
    let fileExtension: String
    
    init(name1: String, fileExtension: String) {
        self.name1 = name1
        self.fileExtension = fileExtension
    }
    
    var fullFileName: String {
        return name1 + "." + fileExtension
    }
}

let file = LocalFile(name1: "image", fileExtension: "png")
print(file.fullFileName)


