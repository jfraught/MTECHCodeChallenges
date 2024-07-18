import UIKit

class Node<T>: CustomStringConvertible {
    var description: String {
        return String(describing: value)
    }
    
    let value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

class Queue<T> {
    private var first: Node<T>?
    private var last: Node<T>?
    
    func dequeue() -> T? {
        let retValue = first
        first = retValue?.next
        retValue?.next = nil
        return retValue?.value
    }
    
    func enqueue(_ value: T) {
        guard last != nil else {
            first = Node(value: value)
            return last = first
        }
        
        last?.next = Node(value: value)
        last = last?.next
    }
}
var queue = Queue<String>()

queue.enqueue("Bob")
queue.enqueue("George")
queue.enqueue("Sally")
queue.enqueue("Beth")



var current = queue.dequeue()
repeat {
    print(String(describing: current))
    current = queue.dequeue()
} while current != nil
