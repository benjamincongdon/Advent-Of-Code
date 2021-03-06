import Foundation

let input = try String(contentsOfFile: "1.txt", encoding: NSUTF8StringEncoding)

var floor = 0, step = 1
var found = false
for char in input.characters{
    if char == "(" {
        floor += 1
    }
    else if char == ")"{
        floor -= 1
    }
    if !found && floor == -1 {
        found = true
    }
    else if !found {
       step += 1
    }
}
print(floor)
print(step)
