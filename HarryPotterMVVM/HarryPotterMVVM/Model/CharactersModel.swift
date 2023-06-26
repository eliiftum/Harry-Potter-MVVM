//
//  CharactersModel.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import Foundation


typealias CharactersModel = [CharactersModelElement]

// MARK: - CharactersModelElement
struct CharactersModelElement: Codable {
    let id, name: String?
    let alternateNames: [String]?
    let species: Species?
    let gender: Gender?
    let house: House?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: Ancestry?
    let eyeColour: EyeColour?
    let hairColour: HairColour?
    let wand: Wand?
    let patronus: Patronus?
    let hogwartsStudent, hogwartsStaff: Bool?
    let actor: String?
    let alternateActors: [String]?
    let alive: Bool?
    let image: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alternateActors = "alternate_actors"
        case alive, image
    }
}

enum Ancestry: String, Codable {
    case empty = ""
    case halfBlood = "half-blood"
    case halfVeela = "half-veela"
    case muggle = "muggle"
    case muggleborn = "muggleborn"
    case pureBlood = "pure-blood"
    case quarterVeela = "quarter-veela"
    case squib = "squib"
}

enum EyeColour: String, Codable {
    case amber = "amber"
    case black = "black"
    case blue = "blue"
    case brown = "brown"
    case dark = "dark"
    case empty = ""
    case green = "green"
    case grey = "grey"
    case hazel = "hazel"
    case orange = "orange"
    case paleSilvery = "pale, silvery"
    case red = "red"
    case white = "white"
    case yellow = "yellow"
    case yellowish = "yellowish"
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

enum HairColour: String, Codable {
    case bald = "bald"
    case black = "black"
    case blond = "blond"
    case blonde = "blonde"
    case brown = "brown"
    case dark = "dark"
    case dull = "dull"
    case empty = ""
    case ginger = "ginger"
    case grey = "grey"
    case red = "red"
    case sandy = "sandy"
    case silver = "silver"
    case tawny = "tawny"
    case white = "white"
}

enum House: String, Codable {
    case empty = ""
    case gryffindor = "Gryffindor"
    case hufflepuff = "Hufflepuff"
    case ravenclaw = "Ravenclaw"
    case slytherin = "Slytherin"
}

enum Patronus: String, Codable {
    case boar = "boar"
    case doe = "doe"
    case empty = ""
    case goat = "goat"
    case hare = "hare"
    case horse = "horse"
    case jackRussellTerrier = "Jack Russell terrier"
    case lynx = "lynx"
    case nonCorporeal = "Non-Corporeal"
    case otter = "otter"
    case persianCat = "persian cat"
    case stag = "stag"
    case swan = "swan"
    case tabbyCat = "tabby cat"
    case weasel = "weasel"
    case wolf = "wolf"
}

enum Species: String, Codable {
    case acromantula = "acromantula"
    case cat = "cat"
    case centaur = "centaur"
    case dragon = "dragon"
    case ghost = "ghost"
    case giant = "giant"
    case goblin = "goblin"
    case halfGiant = "half-giant"
    case halfHuman = "half-human"
    case hippogriff = "hippogriff"
    case houseELF = "house-elf"
    case human = "human"
    case owl = "owl"
    case poltergeist = "poltergeist"
    case threeHeadedDog = "three-headed dog"
    case vampire = "vampire"
    case werewolf = "werewolf"
}

// MARK: - Wand
struct Wand: Codable {
    let wood: Wood?
    let core: Core?
    let length: Double?
}

enum Core: String, Codable {
    case dragonHeartstring = "dragon heartstring"
    case empty = ""
    case phoenixFeather = "phoenix feather"
    case unicornHair = "unicorn hair"
    case unicornTailHair = "unicorn tail-hair"
}

enum Wood: String, Codable {
    case ash = "ash"
    case birch = "birch"
    case cedar = "cedar"
    case cherry = "cherry"
    case chestnut = "chestnut"
    case cypress = "cypress"
    case elm = "elm"
    case empty = ""
    case fir = "fir"
    case hawthorn = "hawthorn"
    case holly = "holly"
    case hornbeam = "hornbeam"
    case larch = "larch"
    case mahogany = "mahogany"
    case oak = "oak"
    case vine = "vine"
    case walnut = "walnut"
    case willow = "willow"
    case yew = "yew"
}


