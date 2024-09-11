import UIKit

// A robot moves around a 2D grid. At the start, it is at x: 0, y: 0, facing east. It is controlled by a sequence of instructions:

// . means take one step forwards in the current direction.
// < means turn 90 degrees anticlockwise.
// > means turn 90 degrees clockwise.
// Your job is to process the instructions and return the final position of the robot as a Point.
// Your Point struct should have an x and a y property

// Example
// For example, if the robot is given the sequence of instructions ..<.<., then:

// Step 1: . It still faces east, and is at x: 1, y: 0
// Step 2: . It still faces east, and is at x: 2, y: 0
// Step 3: < It now faces north, and is still at x: 2, y: 0
// Step 4: . It still faces north, and is at x: 2, y: 1
// Step 5: < It now faces west, and is still at x: 2, y: 1
// Step 6: . It still faces west, and is now at x: 1, y: 1
// So, trackRobot("..<.<.") returns x: 1, y: 1

// Notes
// The instruction strings will only contain the three valid characters ., < or >.
// You will always be passed a string (but the string might be empty).

struct Robot {
    enum Direction  {
        case north, east, south, west
    }
    
    var x: Int = 0
    var y: Int = 0
    var direction = Direction.east
    
    mutating func moves(_ instructions: String) {
        let instructions: [String] = instructions.map { String($0) }
        for instruction in instructions {
            switch instruction {
            case ".":
                switch direction {
                case .north:
                    y += 1
                case .east:
                    x += 1
                case .south:
                    y -= 1
                case .west:
                    x -= 1
                }
            case "<":
                switch direction {
                case .north:
                    direction = .west
                case .east:
                    direction = .north
                case .south:
                    direction = .east
                case .west:
                    direction = .south
                }
            case ">":
                switch direction {
                case .north:
                    direction = .east
                case .east:
                    direction = .south
                case .south:
                    direction = .west
                case .west:
                    direction = .north
                }
            default:
                print("\(instruction) isn't a valid instruction")
            }
        }
        
        print("x:\(x), y:\(y)")
    }
}

var bobTheRobot = Robot()
bobTheRobot.moves("..<.<.")

