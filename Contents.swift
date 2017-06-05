//: Playground - noun: a place where people can play

import UIKit

///////////////////////////////////////////////////////////////////////////////// MARK: Optionals
/*
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

/////////////////////////////////////////////////////////////////////////////////OPTIONAL CHANING

//let album = albumReleased(year: 2006)?.uppercased()
//print("The album is \(album)")

////////////////////////////////////////////////////////////////////////// THE NIL COALESCING OPERATOR

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")


*/

///////////////////////////////////////////////////////////////////////////////// MARK: ENUMS


/*enum WeatherType {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}


getHaterStatus(weather: WeatherType.cloud) */

///////////////////////////////////////////////////////////////////// MARK: ENUMS WITH ADDITIONAL VALUES

 /* enum WeatherType {
    case sun
    case cloud
    case rain
    case wind (speed : Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5)) */


///////////////////////////////////////////////////////////////////////////////// MARK: STRUCTS


/* struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "trainers")
let other = Person(clothes: "short skirts", shoes: "high heels")

//print(taylor.clothes)
//print(other.shoes)

var taylorCopy = taylor

taylorCopy.shoes = "flip flops"  // in a struct this will not change the original value. unlike a class

print(taylor)
print(taylorCopy) */

///////////////////////////////////////////////////////////////////////////////// MARK: CLASSES
/*
    // Basic
class Person {
    var clothes : String
    var shoes : String
    
    // Remeber to init to avoid too many optionals.
    init(clothes: String, shoes: String) {
        
        self.clothes = clothes
        self.shoes = shoes
    }
}

///////////////////////////////////////////////////////////////////////////////// Inheritance

class Singer{
    var name: String
    var age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
    }
    
    func sing() {
        print("La La LA")
    }
}

//
//var taylor = Singer(name: "Taylor", age: 25)
//taylor.name
//taylor.age
//taylor.sing()

class CountrySinger : Singer {
    
    override func sing() {
        print("Trucks, Guitars and Liquor")
    }
    
}

var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()

class HeavyMetalinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age:Int, noiseLevel: Int) {
        
        self.noiseLevel = noiseLevel
        //Super.init only after own property has been set
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrr rargh Rargh RARRRRRGH!")
    }
}*/

 ///////////////////////////////////////////////////////////////////////////////// Properties
/*
struct Person {
    var clothes: String {
        willSet{
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet{
            updateUI(msg: "I just changed  from \(oldValue) to \(clothes)")

        }
    }
    var shoes : String
    
    func describe(){
            print("I Like wearing \(clothes) with \(shoes)")
    }
}

func updateUI(msg: String) {
    print(msg)
}

//let taylor = Person(clothes: "T-Shorts", shoes: "Trainers")
//
//let other = Person(clothes: "Short Skirts", shoes: "High Heels")
//
//taylor.describe()
//other.describe()

var taylor = Person(clothes: "T-shirts", shoes: "trainers")
taylor.clothes = "Short Skirts"
 */

///////////////////////////////////////////////////////////////////////////////// Computed Properties
/*
struct Person {
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears) */
 
 //////////////////////////////////////////////////////////////////////// Static Properties and methods

/*
struct TaylorFan {
    static var favouriteSong = "Shake it off"
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "Thomas", age: 32)
print(TaylorFan.favouriteSong)

 */


 //////////////////////////////////////////////////////////////////////// Access Control

// Public: this means everyone can read and write the property.
// Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
// File Private: this means that only Swift code in the same file as the type can read and write the property.
// Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type.

/*
class TaylorFan {
    private var name: String!
}*/


//////////////////////////////////////////////////////////////////////// POLYMORPHISM AND TYPECASTING

/*
class Album {
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}


class StudioAlbum : Album {
    var studio : String
    
    init(name: String, studio : String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum : Album {
    var location : String
    
    init(name: String, location : String) {
        self.location = location
        super.init(name: name)
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

 //////////////////////////////////////////////////////////////////////Converting types with typecasting

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
   
    print(album.getPerformance())
    
    print(album.location)

}

*/

 //////////////////////////////////////////////// Converting common types with initializers

/*
 let number = 5
let text = String(number)
print(text)

*/



 ////////////////////////////////////////////////////////////////////// CLOSURES

let vw = UIView()

    UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
    })


//////////////////////////////////////////////////////////////////////Trailing closures

/// if the last parameter to a method takes a closure, you can eliminate that parameter and instead provide it as a block of code
UIView.animate(withDuration: 0.5){
    vw.alpha = 0
}