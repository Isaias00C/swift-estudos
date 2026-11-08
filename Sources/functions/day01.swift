public func sum() {
    let numbers = [1, 2, 3, 4, 5]
    let total = numbers.reduce(0, +)
    print("The sum is \(total)")
}

public func tempConversor(temp: Double, from: String, to: String) -> Double {
    if from == to {
        return temp
    }else if from == "fahenheit" {
        let fahenheit: Double = (temp - 32) * 5 / 9
        return fahenheit
    }else if from == "celsius" {
        let celsius: Double = (temp * 9 / 5) + 32
        return celsius
    }

    return Double.nan
}

public func isPalindrome(_ str: String) -> Bool {
    let cleanedString = str.lowercased().filter { $0.isLetter }
    let reversedString = String(cleanedString.reversed())
    
    for index: Int in 0 ..< cleanedString.count / 2 {
        if cleanedString[cleanedString.index(cleanedString.startIndex, offsetBy: index)] != reversedString[reversedString.index(reversedString.startIndex, offsetBy: index)] {
            return false
        }
    }
    return true
}

public func personDescriber(name: String, ageString: String) -> String {
    guard !name.isEmpty else {
        return "Name cannot be empty"
    }

    guard let age = Int(ageString) else {
        return "Age must be a integer"
    }

    guard age >= 0 && age <= 120 else {
        return "Agr out of range"
    }

    return "name: \(name), age: \(age)"
}

public func options(option: Int) -> String{
    switch option {
        case 1:
            sum()
            return "function sum was called"
        case 2:
            let celsius = tempConversor(temp: 32, from: "fahrenheit", to: "celsius")
            return "tempConversor function was called tranforming 32°F to \(celsius)°C"
        case 3:
            let isPalindrome = isPalindrome("A man, a plan, a canal: Panama")
            return "isPalindrome function was called and the result is \(isPalindrome)"
        default:
            let personDescription = personDescriber(name: "John Doe", ageString: "30")
            return personDescription
    }
}