class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// TC: O(n)
// SC: O(n)
func middleNode(_ head: ListNode?) -> ListNode? {
    var list: ListNode? = head
    var array = [ListNode]()
    
    while list != nil {
        array.append(list!)
        list = list!.next
    }
   
    return array[array.endIndex / 2]
}

// Pointers
// TC: O(n)
// SC: O(1)
func middleNode2(_ head: ListNode?) -> ListNode? {
    var middle: ListNode? = head
    var end: ListNode? = head
    
    while end != nil, end!.next != nil {
        middle = middle!.next
        end = end!.next!.next
    }
   
    return middle
}
