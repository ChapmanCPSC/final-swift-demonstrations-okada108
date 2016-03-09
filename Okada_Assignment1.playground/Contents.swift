//: Playground - noun: a place where people can play

import UIKit



//Optional Types 

var x = String?()

print (x)

x = "hello world"

print (x)




// struct 

struct Dob
{
    static var month = "03"
    static var day = "06"
    static var year = "1996"
    static let formal = month+"/"+day+"/"+year

    
}

x = Dob.formal

print (x)

//class 

class Person
{
    var name : String
    var id : Int?
    var dob : String?
    var graduated : String?
    init (name: String, id: Int?, dob: String?, graduated: String?)
    {
        self.name = name
        self.id = id
        self.dob = dob
        self.graduated = graduated
    }
    
    func name_talk ()
    {
        print ("Hi my name is " + name)
    }
    
}

var b = Person(name: "Bryan Okada", id: 123, dob: "03/06/1996", graduated: "yes")


b.name_talk()


//enum 

enum Meats
{
    case Ham, Turkey, Chicken, Beef
    
    
    
}

var sandwich = Meats.Ham
//switch
switch sandwich {
case .Ham:
    print ("I am decently healthy for you")
    
case .Turkey:
    print ("I am more healthy than Ham for you")
    
case .Chicken:
    print ("I am the most healthy for you")
    
case .Beef:
    print ("I have a lot of calories")
    
}


//Protocols 



protocol Athlete {
    func run()
    func action()
    

    
}


class Bball : Athlete {
    func run()
    {
        print ("I am sprinting on the basketball court")
        
    }
    func action()
    {
        print ("I am shooting a basketball")
    }
}



class Soccer : Athlete {
    func run()
    {
        print ("I am running on the field")
    }
    func action()
    {
        print ("I am kicking the ball")
    }
}

var mike_jordan = Bball()

mike_jordan.action()


var messi = Soccer()

messi.action()



//extensions 

extension Athlete {
    func injured()
    {
        print ("I am injured")
    }
}

mike_jordan.injured()

//collection types 

//arrays 

var team : [String] = ["Bryan", "Adam", "John"]


if (team.count < 5)
{
    team.append("Player 1")
}

team

// dictionaries

var students : [Int: String] = [1234 : "Bryan", 2002: "Adam"]


students[1234]


students[1001] = "John"


students[1234] = "Luke"

students[1234]


// error handling 



enum TeamError : ErrorType{
    case NotEnoughPlayers
}



class Team{
    
    var players : [String] = []
    
    init (players: [String])
    {
        self.players = players
    }
    
    func play() throws{
        
        if (players.count < 5){
            throw TeamError.NotEnoughPlayers
            
        }
        else
        {
            print ("Lets play")
        }
        
        }
    }

var t = Team(players: ["Bryan","Alex","john","David"])


do {
    try t.play()
} catch TeamError.NotEnoughPlayers {
    print ("There are not enough players to play")
}













