//
//  AnimalsModel.swift
//  AnimalGame
//
//  Created by Maryam Mohammad on 12/07/1445 AH.
//

import Foundation

struct Animals: Identifiable {
    var id: Int
    var animalName : String
    var type : String
    var diet : String
    var habitat : String
    var skinCover : String
    var fact : String
    var animalImage : String
    var ques1: String
    var choices1: [String]
    var answer1: String
    var ques2: String
    var choices2: [String]
    var answer2: String
    var factSound: String
    var itSound: String
    var posx : Double
    var posy : Double
    var Animal_drag : Bool
    
}


var camel = Animals(
    id: 1,
    animalName: NSLocalizedString("Camel", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Herbivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Deserts", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Fur", comment: "Animal skin cover"),
    fact: NSLocalizedString("Have one or two humps that stores fat and break them to water and energy when needed and can conserve water for a long period of time.", comment: "Animal fact"),
    animalImage: "Camel",
    ques1: NSLocalizedString("What kind of diet do camels have?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Herbivore", comment: "Choice 1 for question 1"),
        NSLocalizedString("Omnivore", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Herbivore", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Camels can store water for only a short period of time.", comment: "Question 2"),
    choices2: [
        NSLocalizedString("True", comment: "Choice 1 for question 2"),
        NSLocalizedString("False", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("False", comment: "Answer for question 2"),
    factSound: "CamelFacts",
    itSound: "CamelSound" ,  posx : 327 , posy : 271 , Animal_drag : false
)

var horse = Animals(
    id: 2,
    animalName: NSLocalizedString("Horse", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Herbivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Grasslands", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Hair", comment: "Animal skin cover"),
    fact: NSLocalizedString("The horse is fast, so it has a long leg bone. It also has a set of strong, high-crowned teeth, suited to grinding grasses and other harsh vegetation.", comment: "Animal fact"),
    animalImage: "Horse",
    ques1: NSLocalizedString("What covers horses skin?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Wool", comment: "Choice 1 for question 1"),
        NSLocalizedString("Hair", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Hair", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Horses can grind grasses and other harsh vegetation.", comment: "Question 2"),
    choices2: [
        NSLocalizedString("True", comment: "Choice 1 for question 2"),
        NSLocalizedString("False", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("True", comment: "Answer for question 2"),
    factSound: "HorseFacts",
    itSound: "HorseSound",  posx : 929 , posy : 417 , Animal_drag : false
)

var sheep = Animals(
    id: 3,
    animalName: NSLocalizedString("Sheep", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Herbivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Grasslands", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Wool", comment: "Animal skin cover"),
    fact: NSLocalizedString("Sheep can jump nearly 12 feet in a single bound. They have distinctive beards and long, warm coats to protect them from cold temperatures and wind.", comment: "Animal fact"),
    animalImage: "Sheep",
    ques1: NSLocalizedString("Where do sheep live?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Grasslands", comment: "Choice 1 for question 1"),
        NSLocalizedString("Desert", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Grasslands", comment: "Answer for question 1"),
    ques2: NSLocalizedString("What protects the sheep from cold temperatures and wind?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Feathers", comment: "Choice 1 for question 2"),
        NSLocalizedString("Wool", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Wool", comment: "Answer for question 2"),
    factSound: "SheepFacts",
    itSound: "SheepSound" , posx : 746 , posy : 530 , Animal_drag : false
)

var cow = Animals(
    id: 4,
    animalName: NSLocalizedString("Cow", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Herbivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Grassland", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Hair", comment: "Animal skin cover"),
    fact: NSLocalizedString("Cows produce milk that we use to make butter, yogurt, and many other products. A baby cow is called a calf. An adult male is called a bull.", comment: "Animal fact"),
    animalImage: "Cow",
    ques1: NSLocalizedString("What do we call the baby cow?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Bull", comment: "Choice 1 for question 1"),
        NSLocalizedString("Calf", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Calf", comment: "Answer for question 1"),
    ques2: NSLocalizedString("To which types of animals do cows belong?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Mammals", comment: "Choice 1 for question 2"),
        NSLocalizedString("Reptiles", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Mammals", comment: "Answer for question 2"),
    factSound: "CowFacts",
    itSound: "CowSound" ,  posx : 571 , posy : 550 , Animal_drag : false
)

var gazelle = Animals(
    id: 5,
    animalName: NSLocalizedString("Gazelle", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Herbivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Deserts and Grasslands", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Fur", comment: "Animal skin cover"),
    fact: NSLocalizedString("Gazelles can be extremely fast because they need to escape from dangerous predators like cheetahs and lions.", comment: "Animal fact"),
    animalImage: "Gazelle",
    ques1: NSLocalizedString("Which animal is considered as a predator to the gazelle?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Dog", comment: "Choice 1 for question 1"),
        NSLocalizedString("Cheetah", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Cheetah", comment: "Answer for question 1"),
    ques2: NSLocalizedString("What covers the gazelle's skin?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Hair", comment: "Choice 1 for question 2"),
        NSLocalizedString("Fur", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Fur", comment: "Answer for question 2"),
    factSound: "GazelleFacts",
    itSound: "GazelleSound" , posx : 822, posy : 353 , Animal_drag : false
)

var wolf = Animals(
    id: 6,
    animalName: NSLocalizedString("Wolf", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Carnivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Forests and Mountains", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Fur", comment: "Animal skin cover"),
    fact: NSLocalizedString("Wolves communicate with more than one howl. The howl is used as a way to call to another pack or to warn of danger. Each pack has a unique howl.", comment: "Animal fact"),
    animalImage: "Wolf",
    ques1: NSLocalizedString("What kind of diet do wolves have?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Carnivore", comment: "Choice 1 for question 1"),
        NSLocalizedString("Herbivore", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Carnivore", comment: "Answer for question 1"),
    ques2: NSLocalizedString("The wolf's howl is used as a warning of danger.", comment: "Question 2"),
    choices2: [
        NSLocalizedString("True", comment: "Choice 1 for question 2"),
        NSLocalizedString("False", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("True", comment: "Answer for question 2"),
    factSound: "WolfFacts",
    itSound: "WolfSound" , posx : 837, posy : 203 , Animal_drag : false
)


var dog = Animals(
    id: 7,
    animalName: NSLocalizedString("Dog", comment: "Animal name"),
    type: NSLocalizedString("Mammals", comment: "Animal type"),
    diet: NSLocalizedString("Omnivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Diverse environments", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Fur", comment: "Animal skin cover"),
    fact: NSLocalizedString("Dogs can provide assistance to humans by performing various tasks such as hunting, guarding, and searching for missing people.", comment: "Animal fact"),
    animalImage: "Dog",
    ques1: NSLocalizedString("Can dogs be used by humans for hunting?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Yes", comment: "Choice 1 for question 1"),
        NSLocalizedString("No", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Yes", comment: "Answer for question 1"),
    ques2: NSLocalizedString("What covers the dog's skin?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Wool", comment: "Choice 1 for question 2"),
        NSLocalizedString("Fur", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Fur", comment: "Answer for question 2"),
    factSound: "DogFacts",
    itSound: "DogSound" , posx : 284, posy : 471 , Animal_drag : false
)

var pigeon = Animals(
    id: 8,
    animalName: NSLocalizedString("Pigeon", comment: "Animal name"),
    type: NSLocalizedString("Bird", comment: "Animal type"),
    diet: NSLocalizedString("Herbivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Diverse environments", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Feathers", comment: "Animal skin cover"),
    fact: NSLocalizedString("Pigeons usually make nests of sticks, and eggs are incubated by parents. Unlike most other birds, the Columbidae produce a type of milk and they feed their young with it.", comment: "Animal fact"),
    animalImage: "Pigeon",
    ques1: NSLocalizedString("What kind of diet do pigeons have?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Herbivore", comment: "Choice 1 for question 1"),
        NSLocalizedString("Omnivore", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Herbivore", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Pigeons live in diverse environments like farms and city buildings.", comment: "Question 2"),
    choices2: [
        NSLocalizedString("True", comment: "Choice 1 for question 2"),
        NSLocalizedString("False", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("True", comment: "Answer for question 2"),
    factSound: "PigeonFacts",
    itSound: "PigeonSound" , posx : 906, posy : 571 , Animal_drag : false
)

var hawk = Animals(
    id: 9,
    animalName: NSLocalizedString("Hawk", comment: "Animal name"),
    type: NSLocalizedString("Bird of Prey", comment: "Animal type"),
    diet: NSLocalizedString("Carnivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Mountains", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Feathers", comment: "Animal skin cover"),
    fact: NSLocalizedString("Hawks are birds of prey. They hunt and eat animals for food. They have sharp claws and a short hooked beak to help them catch and kill animals.", comment: "Animal fact"),
    animalImage: "Hawk",
    ques1: NSLocalizedString("What kind of diet do hawks have?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Omnivore", comment: "Choice 1 for question 1"),
        NSLocalizedString("Carnivore", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Carnivore", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Where do hawks live?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Mountains", comment: "Choice 1 for question 2"),
        NSLocalizedString("Deserts", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Mountains", comment: "Answer for question 2"),
    factSound: "HawkFacts",
    itSound: "HawkSound" , posx : 641, posy : 244 , Animal_drag : false
)

var cat = Animals(
    id: 10,
    animalName: NSLocalizedString("Cat", comment: "Animal name"),
    type: NSLocalizedString("Mammal", comment: "Animal type"),
    diet: NSLocalizedString("Carnivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Diverse environments", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Fur", comment: "Animal skin cover"),
    fact: NSLocalizedString("Cats conserve energy by sleeping for 13 to 14 hours a day. They have flexible bodies and teeth adapted for hunting small animals such as mice and rats.", comment: "Animal fact"),
    animalImage: "Cat",
    ques1: NSLocalizedString("What type of animals are cats?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Arachnid", comment: "Choice 1 for question 1"),
        NSLocalizedString("Mammals", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Mammals", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Approximately, how many hours do cats sleep a day?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("14 Hours", comment: "Choice 1 for question 2"),
        NSLocalizedString("9 Hours", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("14 Hours", comment: "Answer for question 2"),
    factSound: "CatFacts",
    itSound: "CatSound" , posx : 186, posy : 475 , Animal_drag : false
)

var sparrows = Animals(
    id: 11,
    animalName: NSLocalizedString("Sparrow", comment: "Animal name"),
    type: NSLocalizedString("Bird", comment: "Animal type"),
    diet: NSLocalizedString("Omnivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Diverse environments", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Feathers", comment: "Animal skin cover"),
    fact: NSLocalizedString("Sparrows often make their nests near houses or buildings. This means they are one of the easiest birds to see in the wild.", comment: "Animal fact"),
    animalImage: "Bird",
    ques1: NSLocalizedString("Sparrows are omnivores, they eat seeds and worms.", comment: "Question 1"),
    choices1: [
        NSLocalizedString("True", comment: "Choice 1 for question 1"),
        NSLocalizedString("False", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("True", comment: "Answer for question 1"),
    ques2: NSLocalizedString("What type of animals are sparrows?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Mammals", comment: "Choice 1 for question 2"),
        NSLocalizedString("Birds", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Birds", comment: "Answer for question 2"),
    factSound: "BirdFacts",
    itSound: "BirdSound" , posx : 1016, posy : 571 , Animal_drag : false
)

var snake = Animals(
    id: 12,
    animalName: NSLocalizedString("Snake", comment: "Animal name"),
    type: NSLocalizedString("Reptile", comment: "Animal type"),
    diet: NSLocalizedString("Carnivore", comment: "Animal diet"),
    habitat: NSLocalizedString("Deserts", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Scale", comment: "Animal skin cover"),
    fact: NSLocalizedString("The snake's body is covered with scales. It sheds its skin many times during its life, and it has no ears or eyelids.", comment: "Animal fact"),
    animalImage: "Snake",
    ques1: NSLocalizedString("Do snakes have eyelids and ears?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Yes", comment: "Choice 1 for question 1"),
        NSLocalizedString("No", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("No", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Where do snakes live?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Desert", comment: "Choice 1 for question 2"),
        NSLocalizedString("Farms", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Desert", comment: "Answer for question 2"),
    factSound: "SnakeFacts",
    itSound: "SnakeSound" , posx : 153, posy : 571 , Animal_drag : false
)

var scorpion = Animals(
    id: 13,
    animalName: NSLocalizedString("Scorpion", comment: "Animal name"),
    type: NSLocalizedString("Arachnid", comment: "Animal type"),
    diet: NSLocalizedString("Carnivorous", comment: "Animal diet"),
    habitat: NSLocalizedString("Deserts", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Exoskeleton", comment: "Animal skin cover"),
    fact: NSLocalizedString("Scorpions use their poison to kill prey and to defend against predators. They quickly grab an insect with their pincers and sting their prey.", comment: "Animal fact"),
    animalImage: "Scorpion",
    ques1: NSLocalizedString("What is the scorpion's skin made of?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Scales", comment: "Choice 1 for question 1"),
        NSLocalizedString("Exoskeleton", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Exoskeleton", comment: "Answer for question 1"),
    ques2: NSLocalizedString("What do scorpions use to kill prey and defend against predators?", comment: "Question 2"),
    choices2: [
        NSLocalizedString("Poison", comment: "Choice 1 for question 2"),
        NSLocalizedString("Ink", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("Poison", comment: "Answer for question 2"),
    factSound: "ScorpionFacts",
    itSound: "ScorpionSaound" , posx : 246, posy : 584 , Animal_drag : false
)


var lizard = Animals(
    id: 14,
    animalName: NSLocalizedString("Lizard", comment: "Animal name"),
    type: NSLocalizedString("Reptile", comment: "Animal type"),
    diet: NSLocalizedString("Omnivores", comment: "Animal diet"),
    habitat: NSLocalizedString("Deserts", comment: "Animal habitat"),
    skinCover: NSLocalizedString("Scales", comment: "Animal skin cover"),
    fact: NSLocalizedString("Lizards are cold-blooded animals. This means that the temperature of their body changes based on the temperature of the surroundings.", comment: "Animal fact"),
    animalImage: "Lizard",
    ques1: NSLocalizedString("What is the lizard's skin made of?", comment: "Question 1"),
    choices1: [
        NSLocalizedString("Scales", comment: "Choice 1 for question 1"),
        NSLocalizedString("Exoskeleton", comment: "Choice 2 for question 1")
    ],
    answer1: NSLocalizedString("Scales", comment: "Answer for question 1"),
    ques2: NSLocalizedString("Lizards are warm-blooded animals, like mammals.", comment: "Question 2"),
    choices2: [
        NSLocalizedString("True", comment: "Choice 1 for question 2"),
        NSLocalizedString("False", comment: "Choice 2 for question 2")
    ],
    answer2: NSLocalizedString("False", comment: "Answer for question 2"),
    factSound: "LizardFacts",
    itSound: "LizardSound" , posx : 485, posy : 312 , Animal_drag : false
)






