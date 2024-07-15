//  🏔️ MTECH Code Challenge SD15: "Linked Lists"
//  Concept: Learn about a specialized data structure; build understanding of the systems underlying standard code structures

//  Instructions:
    //  Today's code challenge will take the form of a mini-lesson led by your instructor. Follow along in the space below.

//  Notes:
    //  If you were not present for the in class demonstration, follow along with the demonstration here: 🔗https://swiftbyshanks.medium.com/stack-and-queue-implementation-with-linkedlist-in-swift-b16c69e1e0dc

import Foundation

class Node<T> {
    var value: T
    
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

class linkedList<T> {
    var head: Node<T>?
    
    func push(_ value: T) {
        let node = Node<(T)>(value: value)
        
        if let head {
            node.next = head
            self.head = node
        } else {
            self.head = node
        }
    }
    
    func pop() -> Node<T>? {
        if let head {
            let node = head
            self.head = head.next
            node.next = nil
            return node
        } else {
            return nil
        }
    }
    
    func peek() -> Node<T>? {
        return head
    }
}
