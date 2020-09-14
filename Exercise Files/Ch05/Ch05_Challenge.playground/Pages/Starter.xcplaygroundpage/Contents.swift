/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias tuple called **Attack** with named values for name and damage
 2. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 3. Write an overloaded version of **attackEnemy** with a parameter of type Attack that returns an string
 4. Use both **attackEnemy** methods
 5. Create a type alias closure called **AttackClosure** that takes in an array of Attacks and returns void, then declare a test array of Attack values.
 6. Write a function called **fetchPlayerAttacks** that has a closure parameter of type AttackClosure and no return value
 7. Call **fetchPlayerAttacks** and loop through the array inside the closure body to print out its tuple values
 
 [Previous Topic](@previous)
 
 */
// 1
typealias Attack = (name: String, damage: Int)

// 2
func attackEnemy(damage: Int) -> Void {
    print("Enemy hit for: \(damage)\n")
}

// 3
func attackEnemy(attack: Attack) -> String {
    return "You attacked with \(attack.name)\nEnemy hit for \(attack.damage)!\n"
}

// 4
attackEnemy(damage: 3)
var msg = attackEnemy(attack: ("Hans Skjold", 10))
print(msg)
// 5
typealias AttackClosure = ([Attack]) -> Void
let playerActions = [("Mist Bomb", 45), ("Rangers Eye", 15), ("Fists of Fury", 5)]

// 6
func fetchPlayerAttacks(closure: AttackClosure) {
    closure(playerActions)
}

// 7
fetchPlayerAttacks { (attackOptions) in
    for (name, damage) in attackOptions {
        print("\(name) will hit for \(damage) if cast ...")
    }
}

