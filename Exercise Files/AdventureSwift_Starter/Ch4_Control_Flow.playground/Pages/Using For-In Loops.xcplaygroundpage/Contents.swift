/*:
 # Using FOR-IN Loops
 ---
 
 ## Topic Essentials
 For-in loops are used primarily to iterate, or loop through, sequences. Sequences can be array items, dictionary key-value pairs, ranges, and even characters in a string.
 
 ### Objectives
 + Use a for-in loop to iterate over a string, array, dictionary, and index ranges
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let playerGreeting = "Hello fellow Hunter!"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Dagger": 25, "Mace": 75]

// Strings and arrays
for stringCharacter in playerGreeting {
    print(stringCharacter)
}

for armor in armorTypes {
    print(armor)
}

// Dictionary key-value pairs
for weaponKey in weapons.keys {
    print(weaponKey)
}
for weaponValues in weapons.values {
    print(weaponValues)
}
for (weaponKey, damageValue) in weapons {
    print("\(weaponKey): \(damageValue)")
}

// Using ranges
//closed range (incl. 1 and 10)
for indexNumber in 1...10 {
    print(indexNumber)
}

for armor in armorTypes[0...]{
    print(armor)
}

//half open range
for indexNumber in 1..<10 {
    print(indexNumber)
}

//one sided ranges
for armor in armorTypes[..<armorTypes.count]{
    print(armor)
}
