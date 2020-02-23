// author Amin Zeina
// version 1.0
// since 2020-02-22
// This program calculates the time needed to reheat a certain food.

var time:Double

print("Do you need to reheat a pizza, sub, or soup? ")
// get food entered from user
fullIf: if let foodEntered = readLine() {
    // determine type of food and set base time.
    if foodEntered == "pizza" {
        time = 0.75    
    } else if foodEntered == "sub" {
        time = 1
    } else if foodEntered == "soup" {
        time = 1.75
    } else {
        print("Invalid Input. please enter: pizza, sub, or soup.")
        // break from main if statement to avoid next prompts
        break fullIf
    }
    
    print("How many " + foodEntered + "s are you reheating (max 3)? ")
    // get number of items from user
    // can safely force unwrap because if let insures there's input.
    if let numberOfItems = Int(readLine()!) {
        // determine total time
        if numberOfItems == 1 {
            // 1 item = no change to time (x1)
            time = time * 1
        } else if numberOfItems == 2 {
            // 2 items = 50% increase in time (x1.5)
            time = time * 1.5
        } else if numberOfItems == 3 {
            // 3 items = 100% increase in time (x2)
            time = time * 2
        } else {
            print("Invalid Input. Only 1-3 items at a time.")
            // break from main if
            break fullIf
        }
    }
    
    // show final time to user, rounded to 2 places, using same method as java code
    print("Your total cook time is " + String((time * 100).rounded() / 100) + " minute(s).")
} else {
    print("Invalid Input. please enter: pizza, sub, or soup.")
}