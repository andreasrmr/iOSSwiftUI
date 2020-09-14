//Fra Lektion

var nonOptional = "Hej" //hedder en non-optional //brug denne mest

//Swift garantere at hvis en variabel er sat kan den aldrig blive sat til nil (null)
//var nilvaerdi = nil //dur ikke
//nilvaerdi = nil //kan sættes til nil nu.
var nilvaerdi: String? = "charlie" //optional - brug denne når det giver mening.

if let nilv = nilvaerdi {
    print(nilv)
}

var strongName:String! = "Burt" //Optional - Forced unwrapped. Farligt at bruge. Den kan være nil.

//hvis værdien er nil skippes nedenstående append.
nilvaerdi?.append(contentsOf: "text")

// Creating optionals
var itemGathered: String? = "Pickaxe"
var isExchangable: Bool?

// Forced unwrapping
//print(itemGathered) //itemGathered has not been unwrapped.
print(itemGathered!) //forced unwrapped. Make sure that itemGathered is not null.
//print(isExchangable!) //wrong (becauses isExchangable does not hold a value.
//Do not force a habit of force unwrapping.




