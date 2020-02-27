import Cocoa

var str = "Hello, playground"

//.. Player Dictionary

var playersDictionary = ["91": (name:"DRAKE CAGGIULA",age:"25",bday:"Jun 20, 1994",height:"5'10",country:"CAN"),
                          "22": (name:"RYAN CARPENTER",age:"29",bday:"Jan 18, 1991",height:"6'0",country:"USA"),
                          "77": (name:"KIRBY DACH",age:"19",bday:"Jan 21, 2001",height:"6'4",country:"CAN"),
                          "12": (name:"ALEX DEBRINCAT",age:"22",bday:"Dec 18, 1997",height:"5'7",country:"USA"),
                          "36": (name:"MATTHEW HIGHMORE",age:"23",bday:"Feb 27, 1996",height:"5'11",country:"CAN"),
                          "64": (name:"DAVID KAMPF",age:"25",bday:"Jan 12, 1995",height:"6'2",country:"CZE"),
                          "88": (name:"PATRICK KANE",age:"31",bday:"Nov 19, 1988",height:"5'10",country:"USA"),
                          "8": (name:"DOMINIK KUBALIK",age:"24",bday:"Aug 21, 1995",height:"6'2",country:"CZE"),
                          "92": (name:"ALEX NYLANDER",age:"21",bday:"Mar 2, 1998",height:"6'1",country:"CAN"),
                          "20": (name:"BRANDON SAAD",age:"27",bday:"Oct 27, 1992",height:"6'1",country:"USA"),
                          "65": (name:"ANDREW SHAW",age:"28",bday:"Jul 20, 1991",height:"5'11",country:"CAN"),
                          "15": (name:"ZACK SMITH",age:"31",bday:"Apr 5, 1988",height:"6'2",country:"CAN"),
                          "17": (name:"DYLAN STROME",age:"22",bday:"Mar 7, 1997",height:"6'3",country:"CAN"),
                          "19": (name:"JONATHAN TOEWS",age:"31",bday:"Apr 29, 1988",height:"6'2",country:"CAN"),
                          "27": (name:"ADAM BOQVIST",age:"19",bday:"Aug 15, 2000",height:"5'11",country:"SWE"),
                          "46": (name:"LUCAS CARLSSON",age:"22",bday:"Jul 5, 1997",height:"6'0",country:"SWE"),
                          "44": (name:"CALVIN DE HAAN",age:"28",bday:"May 9, 1991",height:"6'1",country:"CAN"),
                          "2": (name:"DUNCAN KEITH",age:"36",bday:"Jul 16, 1983",height:"6'1",country:"CAN"),
                          "68": (name:"SLATER KOEKKOEK",age:"26",bday:"Feb 18, 1994",height:"6'2",country:"CAN"),
                          "6": (name:"OLLI MAATTA",age:"25",bday:"Aug 22, 1994",height:"6'2",country:"FIN"),
                          "5": (name:"CONNOR MURPHY",age:"26",bday:"Mar 26, 1993",height:"6'4",country:"USA"),
                          "7": (name:"BRENT SEABROOK",age:"34",bday:"Apr 20, 1985",height:"6'3",country:"CAN"),
                          "55": (name:"NICK SEELER",age:"26",bday:"Jun 3, 1993",height:"6'2",country:"USA"),
                          "50": (name:"COREY CRAWFORD",age:"35",bday:"Dec 31, 1984",height:"6'2",country:"CAN"),
                          "30": (name:"MALCOLM SUBBAN",age:"26",bday:"Dec 21, 1993",height:"6'2",country:"CAN")
   ]



//let dictValInc = dict.sorted(by: { $0.value < $1.value })
//let testVar8ValInc = playersDictionary.sorted(by: { $0.value.name < $1.value.name })
//
//for (k,v) in testVar8ValInc where v.country == "USA" {
//    print("\n******* \(v.name) is number \(k) and is \(v.height) tall")
//}

print("***************************** Sort by Age *****************************************\n")

//let sortedPlayerDictionaryAge = playersDictionary.sorted(by: {$0.value.age < $1.value.age})

//****  this part is the important part!!!!!!
let playersTuple = playersDictionary.values

let sortedTupleByAge = playersTuple.sorted(by: {$0.age < $1.age})
print("\n******* Sorted by Age ********\n")
print("    AGE    PLAYER NAME")
print("    ---    -----------\n")
var counterAge = 0
var counterA = 0
for item in sortedTupleByAge {
//for item in sortedPlayerDictionaryAge {
    //print("\t\(item.value.age) | \(item.value.name) ")
    print("\t\(item.age) | \(item.name) ")
    counterA += 1
    counterAge += Int(item.age) ?? 0
}

var averageAge = counterAge/counterA
print("\nThe average age of the players is: \(averageAge)")

print("\n\n***************************** Sort by Country *****************************************\n")

//let sortedPlayerDictionaryCountry = playersDictionary.sorted(by: {$0.value.country < $1.value.country})
let sortedTupleByCountry = playersTuple.sorted(by: {$0.country < $1.country})

print("\n******* Sorted by Country ********\n")
print(" COUNTRY    PLAYER NAME")
print(" ------     -----------\n")

for item in sortedTupleByCountry {
//for item in sortedPlayerDictionaryCountry {
    //print("\t\(item.value.country) | \(item.value.name) ")
    print("\t\(item.country) | \(item.name) ")
}

print("\n\n***************************** Average Height of Players *****************************************\n")
var counterHeight = 0
var counterB = 0
var parsedInchesHeight = 0


//print(playersTuple.count)
//print(playersDictionary.count)

print("\n******* Player Heights ********\n")

for item in playersTuple {
//for item in playersDictionary {
    
    print(item.height)
    //print(item.value.height)
    
    var myStringArr = (item.height).components(separatedBy: "'")
    //var myStringArr = (item.value.height).components(separatedBy: "'")
    var myFeet = Int(myStringArr[0]) ?? 1
    var myInches = Int(myStringArr[1]) ??  1
    var myTotalHt = (myFeet * 12) + myInches
    
//    var myString: String = "hello hi";
//    var myStringArr = myString.componentsSeparatedByString(" ")
//    var hello: String = myStringArr [0]
//    var hi: String = myStringArr [1]
//
//    var myStringArr = myString.components(separatedBy: " ")
    
    counterB += 1
    counterHeight += myTotalHt
    
}

var totalAverageHeightInches = counterHeight/counterB
var averageHeightFeet = totalAverageHeightInches/12
var averageHeightInch = totalAverageHeightInches % 12

    
print("\nThe average height of the players is: \(averageHeightFeet)'\(averageHeightInch)\n\n")

print("***************************** Months that have Players with the Most Birthdays *****************************************\n")

var january = 0
var february = 0
var march = 0
var april =  0
var may = 0
var june = 0
var july = 0
var august = 0
var september = 0
var october = 0
var november = 0
var december = 0

print("\n******* Player Birthdays ********\n")

for item in playersTuple {
//for item in playersDictionary {
    //print("testing out more...\(item.0)")
    //print("testing out more...\(item.name)")
    //...next part with dropxxxx doesn't work
    //var mentionedUsernames: [String] {
    //  let parts = split(separator: "@").dropFirst()
    
    //    var partA = (item.height).split(separator: "'").dropLast()
    //    var partB = (item.height).split(separator: "'").dropFirst()
    //    var partC = String(partA)
    
    print(item.bday)
    //print(item.value.bday)
    
    var myStringArrBday = (item.bday).components(separatedBy: " ")
    //var myStringArrBday = (item.value.bday).components(separatedBy: " ")
    var myMonth = String(myStringArrBday[0])
    
    switch myMonth {
    case "Jan":
        january += 1
    case "Feb":
        february += 1
    case "Mar":
        march += 1
    case "Apr":
        april += 1
    case "May":
        may += 1
    case "Jun":
        june += 1
    case "Jul":
        july += 1
    case "Aug":
        august += 1
    case "Sep":
        september += 1
    case "Oct":
        october += 1
    case "Nov":
        november += 1
    case "Dec":
        december += 1
    default:
        print("uh oh")
    }
    
}


//.. dictionary of month names and totals that were calculated
var monthDictionary = ["January": january, "February": february, "March": march, "April": april, "May": may, "June": june, "July": july, "August":                                                         august, "September": september, "October": october, "November": november, "December": december]

var highestVal = monthDictionary.values.max()

var monthArray = [[String]]()

//print(highestVal!)
print("\nThe months with the highest number of birthdays is: ")

for (k,v) in monthDictionary where v == highestVal {
    monthArray.append([k, String(v)])
}

monthArray.sort(by: {$0[0] < $1[0]})

//print(monthArray)

for item in monthArray {
    print("\t\t\(monthArray[item].[0]) - number of birthdays = \(item.monthArray[1])")
}

