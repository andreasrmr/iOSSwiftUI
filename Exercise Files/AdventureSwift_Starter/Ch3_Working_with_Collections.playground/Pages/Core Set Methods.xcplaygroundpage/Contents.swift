/*:
 # Core Set Methods
 ---
 
 ## Topic Essentials
 Because sets only store unique values, there are a number of useful operations you can perform on them without having to reinvent the sorting/filtering wheel. These include the `intersection` and difference of set values, as well as `union` and `subtraction`. 
 
 ### Objectives
 + Copy and paste the **allQuests** set from the previous page
 + Create a new set called **completedQuests** and assign it a subset of quests from **allQuests**
 + Try out the different operations the `Set` class can perform
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var activeQuest: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny need firewood"]
var completedQuests: Set = ["Big Boss", "All-4-One", "The Hereafter"]

// Set operations
//Kombiner og tag kun dem hvor item er i begge 2. eks. "Big Boss" her.
var commonQuests = activeQuest.intersection(completedQuests)

//Kombiner men udelad dem der er ens (Big Boss)
var differentQuests = activeQuest.symmetricDifference(completedQuests)

//Kombiner 2 sets
var allQuests = activeQuest.union(completedQuests)

//Gem activeQuest men træk dem fra der er i completedQuests.
var clippedQuests = activeQuest.subtracting(completedQuests)

