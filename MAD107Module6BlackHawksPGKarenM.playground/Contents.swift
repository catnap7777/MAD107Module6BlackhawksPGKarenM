import Cocoa

var str = "Hello, playground"


var players = ["DRAKE CAGGIULA": [
                "number":"91",
                "age":"25",
                "born":"Jun 20, 1994",
                "height":"5'10",
                "country":"CAN"
                ],
               "RYAN CARPENTER": [
                "number":"22",
                "age":"29",
                "born":"Jan 18, 1991",
                "height":"6'0",
                "country":"USA"
                ],
               "KIRBY DACH": [
                "number":"77",
                "age":"19",
                "born":"Jan 21, 2001",
                "height":"6'4",
                "country":"CAN"
                ],
               "ALEX DEBRINCAT": [
                "number":"12",
                "age":"22",
                "born":"Dec 18, 1997",
                "height":"5'7",
                "country":"USA"
                ],
               "MATTHEW HIGHMORE": [
                "number":"36",
                "age":"23",
                "born":"Feb 27, 1996",
                "height":"5'11",
                "country":"CAN"
                ],
               "DAVID KAMPF": [
                "number":"64",
                "age":"25",
                "born":"Jan 12, 1995",
                "height":"6'2",
                "country":"CZE"
                ],
               "PATRICK KANE": [
                "number":"88",
                "age":"31",
                "born":"Nov 19, 1988",
                "country":"USA"
                ],
               "DOMINIK KUBALIK": [
                "number":"8",
                "age":"24",
                "born":"Aug 21, 1995",
                "height":"6'2",
                "country":"CZE"
                ],
               "ALEX NYLANDER": [
                "number":"92",
                "age":"21",
                "born":"Mar 2, 1998",
                "height":"6'1",
                "country":"CAN"
                ],
               "BRANDON SAAD": [
                "number":"20",
                "age":"27",
                "born":"Oct 27, 1992",
                "height":"6'1",
                "country":"USA"
                ],
               "ANDREW SHAW": [
                "number":"65",
                "age":"28",
                "born":"Jul 20, 1991",
                "height":"5'11",
                "country":"CAN"
                ],
               "ZACK SMITH": [
                "number":"15",
                "age":"31",
                "born":"Apr 5, 1988",
                "height":"6'2",
                "country":"CAN"
                ],
               "DYLAN STROME": [
                "number":"17",
                "age":"22",
                "born":"Mar 7, 1997",
                "height":"6'3",
                "country":"CAN"
                ],
               "JONATHAN TOEWS": [
                "number":"19",
                "age":"31",
                "born":"Apr 29, 1988",
                "height":"6'2",
                "country":"CAN"
                ],
               "ADAM BOQVIST": [
                "number":"27",
                "age":"19",
                "born":"Aug 15, 2000",
                "height":"5'11",
                "country":"SWE"
                ],
               "LUCAS CARLSSON": [
                "number":"46",
                "age":"22",
                "born":"Jul 5, 1997",
                "height":"6'0",
                "country":"SWE"
                ],
               "CALVIN DE HAAN": [
                "number":"44",
                "age":"28",
                "born":"May 9, 1991",
                "height":"6'1",
                "country":"CAN"
                ],
               "DUNCAN KEITH": [
                "number":"2",
                "age":"36",
                "born":"Jul 16, 1983",
                "height":"6'1",
                "country":"CAN"
                ],
               "SLATER KOEKKOEK": [
                "number":"68",
                "age":"26",
                "born":"Feb 18, 1994",
                "height":"6'2",
                "country":"CAN"
                ],
               "OLLI MAATTA": [
                "number":"6",
                "age":"25",
                "born":"Aug 22, 1994",
                "height":"6'2",
                "country":"FIN"
                ],
               "CONNOR MURPHY": [
                "number":"5",
                "age":"26",
                "born":"Mar 26, 1993",
                "height":"6'4",
                "country":"USA"
                ],
               "BRENT SEABROOK": [
                "number":"7",
                "age":"34",
                "born":"Apr 20, 1985",
                "height":"6'3",
                "country":"CAN"
                ],
               "NICK SEELER": [
                "number":"55",
                "age":"26",
                "born":"Jun 3, 1993",
                "height":"6'2",
                "country":"USA"
                ],
               "COREY CRAWFORD": [
                "number":"50",
                "age":"35",
                "born":"Dec 31, 1984",
                "height":"6'2",
                "country":"CAN"
                ],
               "MALCOLM SUBBAN": [
                "number":"30",
                "age":"26",
                "born":"Dec 21, 1993",
                "height":"6'2",
                "country":"CAN"
                ]
            ]

var players2 = ["DRAKE CAGGIULA": (number:"91",age:"25",born:"Jun 20, 1994",height:"5'10",country:"CAN"),
                "RYAN CARPENTER": (number:"22",age:"29",born:"Jan 18, 1991",hieght:"6'0",country:"USA"),
                "KIRBY DACH": (number:"77",age:"19",born:"Jan 21, 2001",height:"6'4",country:"CAN")
    
    ] as [String : AnyObject]

for (k,v) in players2 {
    print("key value pairs for number = \(k) and \(v)")
    
    let testvar7 = v.number
    print(testvar7 ?? "yep, that didn't work")
   
    
}

//******************************************************************************************************
//******************************************************************************************************

//let foodOrdered = [["Cheese Burger", 3.00],["French Fries", 2.25],["Soft Drink", 1.00],
//                   ["Chicken Sandwich", 3.25], ["Gyro", 4.25], ["Onion Rings", 2.25], ["Cheese Stix", 1.25]]


var players8 = [["DRAKE CAGGIULA","91"],["RYAN CARPENTER","22"],["KIRBY DACH","77"]]

var players8Dictionary = ["91": ("8","54","dec 15 1965","5.7","USA"),
                          "92": ("2","55","dec 16 1965","5.8","USA")

]

var testVar8 = players8Dictionary["91"]?.2

print("****** this is testVar8: \(String(describing: testVar8))")

//let dictValInc = dict.sorted(by: { $0.value < $1.value })
let testVar8ValInc = players8Dictionary.sorted(by: { $0.value < $1.value })
print("****** this is testVar8ValInc: \(String(describing: testVar8ValInc))")

let testTuplePlayers = players8Dictionary.values
let testTuplePlayersInc = testTuplePlayers.sorted(by: { $0.1 > $1.1})
print(testTuplePlayersInc)

for item in testTuplePlayersInc {
    print("testing out more...\(item.0)")
    
}

//Array of Tuples
let tupleArray = [("A", 123), ("B", 789), ("C", 567), ("D", 432)]
let tupleArrayInc = tupleArray.sorted(by: { $0.1 < $1.1 })
print(tupleArrayInc)

//******************************************************************************************************
//******************************************************************************************************

//var Name: String = "kam"
//
//var players3 = [Name:(number:String, age:String, born:String, height:String, country:String).self] =
//    [   .Ryan:("001","30","Dec 15, 1965", "5'7", "USA")]
//
//var myObject = (number:String,age:String, born:String, height:String, country:String).self
//var players4 = [Name:myObject]
//var dic3 = [String:MyObject]()

//players4["karen"] = ("1","54","dec 15 1965","5.7","USA")

//players4 = [.kam:("1","54","dec 15 1965","5.7","USA")]



//private let positionDictionary:[Position:(shortG: String, longG: String, shortE: String, longE: String)] =
//    [   .Goalkeeper:("TW","Torwart","GK","Goalkeeper"),
//        .CentralDefender:("IV","Innenverteidiger","CD","Central Defender"),
//        .LeftBack:("LV","Linker Verteidiger","LB","Left Back"),
//        .LeftWingBack:("LAV","Linker Außenverteidiger","LWB","Left Wing Back"),
//        .RightBack:("RV","Rechter Verteidiger","RB","Right Back"),
//        .RightWingBack:("RAV","Rechter Außenverteidiger","RWB","Right Wing Back")]

var playersArray = players2
//var playersArray = players.sorted(by: <#T##((key: String, value: [String : String]), (key: String, value: [String : String])) throws -> Bool#>)

//print(playersArray)
//
//var testVar = players2["RYAN CARPENTER"]
//print("\n**************** this is my test variable \(testVar!)")
//print("\n")
//var testVar2 = testVar.number


//for (k,v) in (Array(playersArray).sorted {$0.0.1 < $1.0.0}) {
//    println("\(k):\(v)")
//}

//let applied = playersArray.map{ "num:\($0)"}
let applied = playersArray.map{ "\($0)"}
print("\n\(applied)")

print("\n")

for (k,v) in playersArray {
    print("this is the key: \(k) ... and this is it's value: \(v)")
}

//
//Hoffman, Jon. Mastering Swift 4 - Fourth Edition: An in-depth and comprehensive guide to modern programming techniques with Swift (p. 75). Packt Publishing. Kindle Edition.

//var testArray = players.sorted{,<#arg#> $0.key < $0.key}
//print(testArray)

//
//var test2 = players2["DRAKE CAGGIULA"]?[number]

//var birthdays: [String] = ["5"]

//    let userScheduleArray = players.sorted{$0.key < $0.key}
//
//print(userScheduleArray)

//var playerNumber: [String][String] = players.numbers, players.age
//
//print(playerNumber[0][0]

//var test = players["MALCOLM SUBBAN"]?["age"]


//print(test)

