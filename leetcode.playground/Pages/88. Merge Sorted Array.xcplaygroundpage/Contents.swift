func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 = nums1.dropLast(nums1.count - m)
    nums1 += nums2
    nums1.sort()
    print(nums1)
}

//var num1 = [1,2,3,0,0,0]
var num1 = [1]
//merge(&num1, 3, [2,5,6], 3)
merge(&num1, 1, [], 0)
