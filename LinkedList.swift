import UIKit

//Definition for singly-linked list.
 public class ListNode {
         public var val: Int
         public var next: ListNode?
         public init(_ val: Int) {
                 self.val = val
                     self.next = nil
             }
    }

let input = [2, 1, 3, 5, 6, 4, 7]

func convertArrayToLinkedList(_ arr: [Int]) -> ListNode? {
    guard let first = arr.first else {return nil}
    let head = ListNode(first)
    var temp = head
    for i in arr.enumerated() {
        let next = ListNode(i.element)
        if i.offset == 0 {continue}
        if i.offset == 1 {head.next = next; continue}
        while temp.next != nil {
            temp = temp.next!
        }
        temp.next = next
    }
    
    return head
}

let ll = convertArrayToLinkedList(input)

func convertLinkedListToArray(_ head: ListNode?) -> [Int] {
    var res = [Int]()
    guard var head = head else {return res}
    while head.next != nil {
        res.append(head.val)
        head = head.next!
    }
    res.append(head.val)
    return res
}



let arr = convertLinkedListToArray(ll)
