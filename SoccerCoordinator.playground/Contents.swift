// Load players to Dictionary with Key being Player Name and Value being an array of Height, Experience and Guardian data

var players: [String: [String: Any]] = ["Joe Smith": ["Height": 42, "Experience": true, "Guardian": "Jim and Jan Smith"],
                                       "Jill Tanner": ["Height": 36, "Experience": true, "Guardian": "Clara Tanner"],
                                       "Bill Bon": ["Height": 43, "Experience": true, "Guardian": "Sara and Jenny Bo"],
                                       "Eva Gordon": ["Height": 45, "Experience": false, "Guardian": "Wendy and Mike Gordon"],
                                       "Matt Gill": ["Height": 40, "Experience": false, "Guardian": "Charles and Sylvia Gill"],
                                       "Kimmy Stein": ["Height": 41, "Experience": false, "Guardian": "Bill and Hillary Stein"],
                                       "Sammy Adams": ["Height": 45, "Experience": false, "Guardian": "Jeff Adams"],
                                       "Karl Saygan": ["Height": 42, "Experience": true, "Guardian": "Heather Bledsoe"],
                                       "Suzane Greenberg": ["Height": 44, "Experience": true, "Guardian": "Henrietta Dumas"],
                                       "Sal Dali": ["Height": 41, "Experience": false, "Guardian": "Gala Dali"],
                                       "Joe Kavalier": ["Height": 39, "Experience": false, "Guardian": "Sam and Elaine Kavalier"],
                                       "Ben Finkelstein": ["Height": 44, "Experience": false, "Guardian": "Aaron and Jill Finkelstein"],
                                       "Diego Soto": ["Height": 41, "Experience": true, "Guardian": "Robin and Sarika Soto"],
                                       "Chloe Alaska": ["Height": 47, "Experience": false, "Guardian": "David and Jamie Alaska"],
                                       "Arnold Willis": ["Height": 43, "Experience": false, "Guardian": "Claire Willis"],
                                       "Phillip Helm": ["Height": 44, "Experience": true, "Guardian": "Thomas Helm and Eva Jones"],
                                       "Les Clay": ["Height": 42, "Experience": true, "Guardian": "Wynonna Brown"],
                                       "Herschel Krustofski": ["Height": 45, "Experience": true, "Guardian": "Hyman and Rachel Krustofski"],
                                      ]

// Create empty array for each team

var dragons: [String] = []
var sharks: [String] = []
var raptors: [String] = []

// Sort players into three teams with equal experienced players in each

var count = 0

for player in players {
    if ((player.value["Experience"] as! Bool) == true) {
        switch count {
        case 0: dragons.append(player.key);
        case 1: sharks.append(player.key);
        case 2: raptors.append(player.key);
        default: count = 0
        }
        count += 1
        if (count == 3) {
            count = 0
        }
    } else if ((player.value["Experience"] as! Bool) == false) {
        switch count {
        case 0: dragons.append(player.key);
        case 1: sharks.append(player.key);
        case 2: raptors.append(player.key);
        default: count = 0
        }
        count += 1
        if (count == 3) {
            count = 0
        }
    }
}

// Print letter to parent for each team

for player in dragons {
    print("Hello " + (players[player]?["Guardian"] as! String) + ". Your child's " + player + " team the Dragons has their first practice on Sunday, November 6th at 10am.")
}
for player in sharks {
    print("Hello " + (players[player]?["Guardian"] as! String) + ". Your child's " + player + " team the Sharks has their first practice on Sunday, November 6th at 12pm.")
}
for player in raptors {
    print("Hello " + (players[player]?["Guardian"] as! String) + ". Your child's " + player + " team the Raptors has their first practice on Sunday, November 6th at 2pm.")
}