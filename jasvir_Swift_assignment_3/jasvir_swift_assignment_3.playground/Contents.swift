/* Create a super class named Ship
Create a subclass named CruiseShip
Create a subclass named CargoShip
Create a subclass named PirateShip
the classes should have the following details:
Ship (superclass)
name
year
countryOfOrigin
add an appropriate initializer
CruiseShip (subclass)
maxCapacity
oceanOfOperation
currentPassengerCount
add a method to add a passenger if the ship is not at max capacity
add a method to print the current passenger count
CargoShip (subclass)
maxCargoCapacity
currentCargoCount
isInternational
add a method to add cargo if the ship is not at max capacity
add a method to print the current cargo count
PirateShip (subclass)
maxTreasureCapacity
currentTreasureCount
numberOfCannons
add a method to add treasure if the ship is not at max capacity
add a method to print the current treasure count
Create an instance of 1 of the subclasses and using print statements, demonstrate the use of ALL the properties and methods of that class as well as the superclass 🛠 you can do this anyway you like, but all props and methods must be demonstrated 👍
*/


class Ship {
    var name: String
    var year: Int
    var countryofOrigin: String
    
init(name: String, year: Int, countryofOrigin: String)
{   self.name = name
    self.year = year
    self.countryofOrigin = countryofOrigin
}
    func printDetails() {
            print("Ship Name: \(name)")
            print("Year Built: \(year)")
            print("Country of Origin: \(countryofOrigin)")
        }
}

class CruiseShip: Ship {
    var maxCapacity: Int = 1000
    var oceanofOperation: String
    var currentPassengerCount: Int
    
init(name: String, year: Int, countryofOrigin: String,  oceanofOperation: String, currentPassengerCount: Int)
{   self.oceanofOperation = oceanofOperation
    self.currentPassengerCount =  currentPassengerCount
    super.init(name: name, year: year, countryofOrigin: countryofOrigin)
}
    
    func addPassenger(Passenger:Int) {
        if currentPassengerCount + Passenger < maxCapacity {
            currentPassengerCount += Passenger
            print("Passenger added. Current passenger count: \(currentPassengerCount)")
        } else {
            print("The ship is at max capacity. Cannot add more passengers.")
        }
    }
}

class CargoShip: Ship {
    var maxCargoCapacity: Int = 50000
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, year: Int, countryofOrigin: String, currentCargoCount: Int, isInternational: Bool)
{   self.currentCargoCount = currentCargoCount
    self.isInternational = isInternational
    super.init(name: name, year: year, countryofOrigin: countryofOrigin)
}
    
    func addCargo(cargoWeight: Int) {
        if currentCargoCount + cargoWeight <= maxCargoCapacity 
        {
            currentCargoCount += cargoWeight
            print("Cargo added. Current cargo count: \(currentCargoCount)")
        } else {
            print("The ship is at max cargo capacity. Cannot add more cargo.")
        }
    }
}

class PirateShip: Ship {
    var maxTreasureCapacity: Int = 200
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryofOrigin: String, currentTreasureCount: Int, numberOfCannons: Int)
{     self.currentTreasureCount = currentTreasureCount
      self.numberOfCannons = numberOfCannons
    super.init(name: name, year: year, countryofOrigin: countryofOrigin)
    }
    
    func addTreasure(treasureWeight: Int) {
        if currentTreasureCount + treasureWeight <= maxTreasureCapacity 
        {
            currentTreasureCount += treasureWeight
            print("Treasure added. Current treasure count: \(currentTreasureCount)")
        } else {
            print("The ship is at max treasure capacity. Cannot add more treasure.")
        }
    }
}


let cruiseShip = CruiseShip(name: "Disney", year: 2023, countryofOrigin: "USA", oceanofOperation: "Atlantic",currentPassengerCount: 255)
cruiseShip.printDetails()
cruiseShip.addPassenger(Passenger:250)
cruiseShip.addPassenger(Passenger:300)
cruiseShip.addPassenger(Passenger:300)

let pirateShip = PirateShip(name: "Black Pearl", year: 2005, countryofOrigin: "Canada", currentTreasureCount: 190, numberOfCannons: 20)
pirateShip.printDetails()
pirateShip.addTreasure(treasureWeight: 5)
pirateShip.addTreasure(treasureWeight: 3)
pirateShip.addTreasure(treasureWeight: 3)

let cargoShip = CargoShip(name: "Container", year: 2023, countryofOrigin: "France", currentCargoCount: 10000, isInternational: true)
cargoShip.printDetails()
cargoShip.addCargo(cargoWeight: 25000)
cargoShip.addCargo(cargoWeight: 30000)

