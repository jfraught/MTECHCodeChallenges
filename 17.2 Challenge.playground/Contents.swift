import UIKit

// Write an extension on Character that will check if two given characters are the same case.

// If either of the characters is not a letter, return -1
// If both characters are the same case, return 1
// If both characters are letters, but not the same case, return 0
// Examples

// 'a' and 'g' returns 1

// 'A' and 'C' returns 1

// 'b' and 'G' returns 0

// 'B' and 'g' returns 0

// '0' and '?' returns -1

//extension Character {
//    static func areSameCase(x: Character, y: Character) -> Int {
//        guard x.isLetter, y.isLetter else { return -1 }
//        
//        if (x.isLowercase && y.isLowercase) || (x.isUppercase && y.isUppercase) {
//            return 1
//        } else {
//            return 0
//        }
//    }
//}
//
//Character.areSameCase(x: "a", y: "g")
//Character.areSameCase(x: "A", y: "C")
//Character.areSameCase(x: "b", y: "G")
//Character.areSameCase(x: "B", y: "g")
//Character.areSameCase(x: "0", y: "?")



//Initial understanding after reading iTunes documentation

//let url = URL(string: "https://itunes.apple.com/search?term=jcole&limit=10")!
let url = URL(string: "https://itunes.apple.com/search")!


var urlComponents = URLComponents(string: "https://itunes.apple.com/search")!
urlComponents.queryItems = [ "term" : "jcole", "song" : "crooked_smile" ].map { URLQueryItem(name: $0.key, value: $0.value) }

Task {
    let (data, response) = try await URLSession.shared.data(from: url)
    
    if let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200 {
        let string = String(data: data, encoding: .utf8)
        print(data)
    }
}
