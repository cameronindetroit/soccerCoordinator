
import UIKit

//Soccer League Coordinator 

//All player information
/*
 
Name              Height(inches)    Experience  Gaurdian Name
Joe Smith           42              YES         Jim and Jan Smith
Jill Tanner         36              YES         Clara Tanner
Bill Bon            43              YES         Sara and Jenny Bon
Eva Gordon          45              NO          Wendy and Mike Gordon
Matt Gill           40              NO          Charles and Sylvia Gill
Kimmy Stein         41              NO          Bill and Hillary Stein
Sammy Adams         45              NO          Jeff Adams
Karl Saygan         42              YES         Heather Bledsoe
Suzane Greenberg	44              YES         Henrietta Dumas
Sal Dali            41              NO          Gala Dali
Joe Kavalier        39              NO          Sam and Elaine Kavalier
Ben Finkelstein     44              NO          Aaron and Jill Finkelstein
Diego Soto          41              YES         Robin and Sarika Soto
Chloe Alaska        47              NO          David and Jamie Alaska
Arnold Willis       43              NO          Claire Willis
Phillip Helm        44              YES         Thomas Helm and Eva Jones
Les Clay            42              YES         Wynonna Brown
Herschel Krustofski	45              YES         Hyman and Rachel Krustofski
 
 */


                                //////////////////////////////////////////////////////////
                                ////////////////    EACH PLAYER IN LEAGUE  ////////////////
                                ////////////////                          /////////////////
                                //////////////////////////////////////////////////////////

//Dictionaries containing each players information

var joeSmith: [String: String] = [
    
    "Name": "Joe Smith",
    "Height": "42 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Jim and Jen Smith"
]

var jillTanner = [
    
    "Name": "Jill Tanner",
    "Height": "36 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Clara Tanner"
]

var billBon = [
    
    "Name": "Bill Bon",
    "Height": "36 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Sara and Jenny Bon"
]

var evaGordon = [
    
    "Name": "Eva Gordon",
    "Height": "45 inches",
    "Experience": "No",
    "Gaurdian Name": "Wendy and Mike Gordon"
]

var mattGill = [
    
    "Name": "Eva Gordon",
    "Height": "40 inches",
    "Experience": "No",
    "Gaurdian Name": "Charles and Sylvia Gill"
]

var kimmyStein = [
    
    "Name": "Kimmy Stein",
    "Height": "41 inches",
    "Experience": "No",
    "Gaurdian Name": "Bill and Hillary Stein"
]

var sammyAdams = [
    
    "Name": "Sammy Adams",
    "Height": "45 inches",
    "Experience": "No",
    "Gaurdian Name": "Jeff Adams"
]

var karlSaygen = [
    
    "Name": "Karl Saygen",
    "Height": "42 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Heather Bledsoe"
]

var suzaneGreengerg = [
    
    "Name": "Suzane Greenberg",
    "Height": "44 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Henrietta Dumas"
]

var salDali = [
    
    "Name": "Sal Dali",
    "Height": "41 inches",
    "Experience": "No",
    "Gaurdian Name": "Gala Dali"
]

var joeKavalier = [
    
    "Name": "Joe Kavalier",
    "Height": "39 inches",
    "Experience": "No",
    "Gaurdian Name": "Sam and Elaine Kavalier"
]

var benFinkelstein = [
    
    "Name": "Ben Finkelstein",
    "Height": "44 inches",
    "Experience": "No",
    "Gaurdian Name": "Aaron and Jill Finkelstein"
]

var diegoSoto = [
    
    "Name": "Diego Soto",
    "Height": "41 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Robin and Sarika Soto"
]

var chloeAlaska = [
    
    "Name": "Chloe Alaska",
    "Height": "47 inches",
    "Experience": "No",
    "Gaurdian Name": "David and Jamie Alaska"
]

var arnoldWillis = [
    
    "Name": "Arnold Willis",
    "Height": "43 inches",
    "Experience": "No",
    "Gaurdian Name": "Claire Willis"
]

var phillpiHelm = [
    
    "Name": "Arnold Willis",
    "Height": "43 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Claire Willis"
]

var lesClay = [
    
    "Name": "Les Clay",
    "Height": "42 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Wynonna Brown"
]

var herschelKrustofski = [
    
    "Name": "Herschel Krustofski",
    "Height": "45 inches",
    "Experience": "Yes",
    "Gaurdian Name": "Hyman and Rachel Krustofski"
]

                        /////////////////////////////////////////////////////////
                        ////////// League Members organized into an array////////
                        /////////////////////////////////////////////////////////


//Array of dictionaries holding the key, value pairs of each league member

var players: [[String: String]] = [joeSmith, jillTanner, billBon,evaGordon,mattGill,kimmyStein,sammyAdams,karlSaygen,suzaneGreengerg,salDali,joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillpiHelm, lesClay, herschelKrustofski]



//empty arrays for each team:

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] =  []
var teamRaptors: [[String: String]] = []


/////////////////////////////////////////////////////////////////////
// seperate expereineced players from players who have no expereience
/////////////////////////////////////////////////////////////////////


// function to determine if a player is expereineced and seperates them into even teams

func experience () {
for experiencedPlayer in players {
    if experiencedPlayer["Experience"] == "Yes" {
        if teamDragons.count < teamSharks.count {
            teamDragons.append(experiencedPlayer)
        } else if teamSharks.count < teamRaptors.count {
               teamSharks.append(experiencedPlayer)
        } else {
            teamRaptors.append(experiencedPlayer)
        }
        
    }
}


for notExperiencedPlayer in players {
    if notExperiencedPlayer["Experience"] == "No" {
        if teamDragons.count < teamSharks.count {
            teamDragons.append(notExperiencedPlayer)
        } else if teamSharks.count < teamRaptors.count {
            teamSharks.append(notExperiencedPlayer)
        } else {
            teamRaptors.append(notExperiencedPlayer)
        }
    }
}
    
}

 // calling the function to test it and to choose teams
//function needs to be called for the rest ofthe program to work

var playersToTeam = experience()

    
//Test to make sure all teams have an even amount of players when called

teamDragons.count
teamSharks.count
teamRaptors.count

//Test to make sure function has three experienced plpayers and three inexperienced players

/*
print(teamDragons)
print(teamSharks)
print(teamRaptors)
*/
////////////////////////////////////////////////////////////////////////////////////////////


/* Logic for seperating teams by equal height. 
 Change the dictionary from type 'String: String', to type 'String: Any'. And changing the Array that holds my dictionary.
 This will allow me to use the Value of Key 'height' to sort the players by height.
 I can't figure the proper syntax to do this.  If you have a suggestion please comment to help me figure it out.

*/

/////////////////////////////////
//Letter sent to parents////////
////////////////////////////////

// Empty arrays to hold letters that go out to each team

var lettersforDragons: [String] = []
var letterforSharks: [String] = []
var letterforRaptors: [String] = []



// letters going out to each team
for player in teamDragons {
    var letterDragons = ("\("Hello"), \(player["Gaurdian Name"]!), \("Your Child "),\(player["Name"]!), \("has been placed on team Dragons.") \("The teams first practice is March 17, at 1pm.") \(" We took steps this year to make sure every team has a fair chance of competing this season")")
    lettersforDragons.append(letterDragons)
}

for player in teamSharks {
    var letterSharks = ("\("Hello"), \(player["Gaurdian Name"]!), \("Your Child "),\(player["Name"]!), \("has been placed on team Sharks.") \("The teams first practice is March 17, at 3pm.") \(" We took steps this year to make sure every team has a fair chance of competing this season")")
    letterforSharks.append(letterSharks)
}


for player in teamRaptors {
    var letterRaptors = ("\("Hello"), \(player["Gaurdian Name"]!), \("Your Child "),\(player["Name"]!), \("has been placed on team Raptors.") \("The teams first practice is March 18, at 1pm.") \(" We took steps this year to make sure every team has a fair chance of competing this season")")
    letterforRaptors.append(letterRaptors)
}

// All letters from each team stored in one letters veriable 

let letters = lettersforDragons + letterforSharks + letterforRaptors


// Function for retrieving letters for Dragons

func getLettersDragons () {
for element in lettersforDragons {
    print(element)
    }
}

// Function for retrieving letters for Sharks
func getLettersSharks () {
    for element in letterforSharks {
        print(element)
    }
}


// Function for retrieving letters for Raptors
func getLettersRaptors () {
    for element in letterforRaptors {
        print(element)
    }
}

// Test to make sure all fuctions are called properly
/*
var teamLetters1 = getLettersDragons()

var teamLetters2 = getLettersSharks()

var teamletters3 = getLettersRaptors()
*/




var teamLetters1 = getLettersDragons()
