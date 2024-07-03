import SwiftUI
import PlaygroundSupport

// Challenge One
struct ContentView: View {
    @State var squaresFilled = 1
    
    var body: some View {
        VStack {
            ForEach(0..<10) { row in
                HStack {
                    ForEach(0..<5) { column in
                        if  (row * 5) + column < squaresFilled {
                            Rectangle()
                                .fill(.red)
                                .frame(width: 10, height: 10)
                                .padding()
                            
                        } else {
                            Rectangle()
                                .fill(.white)
                                .frame(width: 10, height: 10)
                                .padding()
                        }
                    }
                }
            }
        }
        .onTapGesture {
            squaresFilled += 1
        
            print(squaresFilled)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

//Black Diamond
func firstAndLast(_ n: Int, of arr: [Any]) -> [Any] {
    guard n * 2 < arr.count else { return arr }
    
    var firstArr: [Any] = []
    for i in 0..<n {
       firstArr.append(arr[i])
    }
    
    var lastArr: [Any] = []
    for i in 1...n {
        lastArr.append(arr[arr.count - i])
    }
    
    return firstArr + lastArr.reversed()
}

print(firstAndLast(3, of: [1, 2, 3, 4, 5, 6, 7]))
print(firstAndLast(4, of: [1, 2, 3, 4, 5, 6, 7]))
