public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func create(_ array: [Int]) -> ListNode {
    var node = ListNode(array[0])
    let head = node
    
    for num in array.dropFirst() {
        node.next = ListNode(num)
        node = node.next!
    }
    
    return head
}

func printLinkedList(head: ListNode?) {
    var node = head
    
    while node != nil {
        print(node!.val)
        node = node?.next
    }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil, list2 == nil { return nil }
    
    let head: ListNode? = ListNode()
    var node = head
    
    var l1 = list1
    var l2 = list2
    
    while l1 != nil, l2 != nil {
        if l1!.val <= l2!.val {
            node?.next = l1!
            l1 = l1?.next
        } else {
            node?.next = l2!
            l2 = l2?.next
        }
        
        node = node?.next
    }
    
    if l1 != nil {
        node?.next = l1
    } else {
        node?.next = l2
    }
    
    return head?.next
}

let list1 = create([1, 2, 4])
let list2 = create([1, 3, 4])

let result = mergeTwoLists(list1, list2)
printLinkedList(head: result)
