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
    
}


var camel = Animals(id: 1,animalName: "Camel", type: "Mammals", diet: "Herbivore", habitat: "Deserts", skinCover: "Fur", fact: "Have one or two humps that stores fat and break them to water and energy when needed and can conserve water for a long period of time.", animalImage: "Camel", ques1: "What kind of diet do camels have?", choices1: ["Herbivore" , "Omnivore"], answer1: "Herbivore", ques2: "Camels can store water for only a short period of time.", choices2: ["True", "False"], answer2: "False", factSound: "CamelFacts", itSound: "CamelSound")

var horse = Animals(id:2, animalName: "Horse", type: "Mammals", diet: "Herbivore", habitat: "Grasslands", skinCover: "Hair", fact: "The horse is fast, so it has a long leg bone. It also has a set of strong, high-crowned teeth, suited to grinding grasses and other harsh vegetation.", animalImage: "Horse", ques1: "What covers horses skin?", choices1: ["Wool" , "Hair"], answer1: "Hair", ques2: "Horses can grind grasses and other harsh vegetation.", choices2: ["True", "False"], answer2: "True", factSound: "HorseFacts", itSound: "HorseSound")

var sheep = Animals(id:3,animalName: "Sheep", type: "Mammals", diet: "Herbivore", habitat: "Grasslands", skinCover: "Wool", fact: "Sheep can jump nearly 12 feet in a single bound. They have distinctive beards and long, warm coats to protect them from cold temperatures and wind.", animalImage: "Sheep", ques1: "Where do sheep live?", choices1: ["Grasslands" , "Desert"], answer1: "Grasslands", ques2: "What protects the sheep from cold temperatures and wind?", choices2: ["Feathers", "Wool"], answer2: "Wool", factSound: "SheepFacts", itSound: "SheepSound")

var cow = Animals(id:4,animalName: "Cow", type: "Mammals", diet: "Herbivore", habitat: "Grassland", skinCover: "Hair", fact: "Cows Produce milk that we use  to make butter, yogurt and many other products. A baby cow is called a calf . An adult male is called a bull.", animalImage: "Cow", ques1: "What do we call the baby cow?", choices1: ["Bull" , "Calf"], answer1: "Calf", ques2: "To which types of animals do cows belong?", choices2: ["Mammals", "Reptiles"], answer2: "Mammals", factSound: "CowFacts", itSound: "CowSound")

var gazelle = Animals(id:5,animalName: "Gazelle", type: "Mammals", diet: "Herbivore", habitat: "Deserts and Grasslands", skinCover: "Fur", fact: "Gazelle can be extremely fast because there are dangerous predators they need to escape from, like Cheetahs and lions.", animalImage: "Gazelle", ques1: "Which animal is considered as a predator to the gazelle?", choices1: ["Dog" , "Cheetah"], answer1: "Cheetah", ques2: "What covers the gazelles skin?", choices2: ["Hair", "Fur"], answer2: "Fur", factSound: "GazelleFacts", itSound: "GazelleSound")

var wolf = Animals(id:6,animalName: "Wolf", type: "Mammals", diet: "Carnivore", habitat: "Forests and Mountains", skinCover: "Fur", fact: "Wolves communicate with more than one howl. The howl is used as a way to call to another pack or a warn of danger. Each pack has a unique howl.", animalImage: "Wolf", ques1: "What kind of diet do wolfs have?", choices1: ["Carnivore" , "Herbivore"], answer1: "Carnivore", ques2: "The wolfs hawl is used as a warn of danger.", choices2: ["True", "False"], answer2: "True", factSound: "WolfFacts", itSound: "WolfSound")

var dog = Animals(id:7,animalName: "Dog", type: "Mammals", diet: "Omnivore", habitat: "Diverse environments", skinCover: "Fur", fact: "Dogs can provide assistance to humans by performing various tasks such as hunting, guarding and searching for missing people.", animalImage: "Dog", ques1: "Can dogs be used by humans for hunting?", choices1: ["Yes" , "No"], answer1: "Yes", ques2: "What covers the dog skin?", choices2: ["Wool", "Fur"], answer2: "Fur", factSound: "DogFacts", itSound: "DogSound")

var pigeon = Animals(id:8,animalName: "Pigeon", type: "Bird", diet: "Herbivore", habitat: "Diverse environments", skinCover: "Feathers", fact: "They usually make nests of sticks, and eggs are incubated parent. Unlike most other birds, the Columbidae produce a type of milk and they feed their young with it.", animalImage: "Pigeon", ques1: "What kind of diet do pigeons have?", choices1: ["Herbivore" , "Omnivore"], answer1: "Herbivore", ques2: "Pigeons live in diverse environments like farms and city buildings.", choices2: ["True", "False"], answer2: "True", factSound: "PigeonFacts", itSound: "PigeonSound")

var hawk = Animals(id:9,animalName: "Hawk", type: "Bird of Prey", diet: "Carnivore", habitat: "Mountains", skinCover: "Feathers", fact: "Hawk are birds of prey, they hunt and eat animals for food. have sharp claws and a short hooked beak to help it catch and kill animals.", animalImage: "Hawk", ques1: "What kind of diet do Hawks have?", choices1: ["Omnivore" , "Carnivore"], answer1: "Carnivore", ques2: "Where do hawks live?", choices2: ["Mountains", "Deserts"], answer2: "Mountains", factSound: "HawkFacts", itSound: "HawkSound")

var cat = Animals(id:10,animalName: "Cat", type: "Mammal", diet: "Carnivore", habitat: "Diverse environments", skinCover: "Fur", fact: "Cats conserve energy by sleeping for 13 to 14 hours a day. They have flexible bodies and teeth adapted for hunting small animals such as mice and rats.", animalImage: "Cat", ques1: "What type of animals cats are?", choices1: ["Arachnid" , "Mammals"], answer1: "Mammals", ques2: "Approximately, How manys hours do cats sleep a day?", choices2: ["14 Hours", "9 Hours"], answer2: "14 Hours", factSound: "CatFacts", itSound: "CatSound")

var sparrows = Animals(id:11,animalName: "Sparrow", type: "Bird", diet: "Omnivore", habitat: "Diverse environments", skinCover: "Feathers", fact: "Sparrows often make their nests near houses or buildings. This means they are one of the easiest birds to see in the wild.", animalImage: "Bird", ques1: "Sparrows are omnivores, they eat seeds and worms.", choices1: ["True" , "False"], answer1: "True", ques2: "What type of animals sparrows are?", choices2: ["Mammals", "Birds"], answer2: "Birds", factSound: "BirdFacts", itSound: "BirdSound")

var snake = Animals(id:12,animalName: "Snake", type: "Reptile", diet: "Carnivore", habitat: "Deserts", skinCover: "Scale", fact: "The snake's body is covered with scales.It sheds its skin many times during its life , and have no ears or eyelids.", animalImage: "Snake", ques1: "Do snakes have eyelids and ears?", choices1: ["Yes" , "No"], answer1: "No", ques2: "Where do snakes Live?", choices2: ["Desert", "Farms"], answer2: "Desert", factSound: "SnakeFacts", itSound: "SnakeSound")

var scorpion = Animals(id:13,animalName: "Scorpion", type: "Arachnid", diet: "Carnivorous", habitat: "Deserts", skinCover: "Exoskeleton", fact: "Scorpions use their poison to kill prey and to defend against predators. They quickly grab an insect with their pincers and sting their prey.", animalImage: "Scorpion", ques1: "What is the scorpion's skin made of?", choices1: ["Scales" , "Exoskeleton"], answer1: "Exoskeleton", ques2: "What do scorions use to kill preys and defend against predators?", choices2: ["Poison", "Ink"], answer2: "Poison", factSound: "ScorpionFacts", itSound: "")

var lizard = Animals(id:14,animalName: "Lizard", type: "Reptile", diet: "Omnivores", habitat: "Deserts", skinCover: "Scales", fact: "Lizards are cold-blooded animals. This means that the temperature of the body changes based on the temperature of the surroundings.", animalImage: "Lizard", ques1: "What is the lizard's skin made of?", choices1: ["Scales" , "Exoskeleton"], answer1: "Scales", ques2: "Lizards are warm-blooded animals, like mammals.", choices2: ["True", "False"], answer2: "False", factSound: "LizardFacts", itSound: "LizardSound")




