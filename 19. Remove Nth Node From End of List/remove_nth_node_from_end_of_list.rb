# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
# Your runtime beats 36.36% of rubysubmissions.

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    ary = []
    real_head = ListNode.new(0)
    cursor = real_head.next = head
    ary << real_head
    while cursor do
        ary << cursor
        ary.shift if ary.length > n + 1
        cursor = cursor.next
    end
    ary[0].next = ary[2]
    real_head.next
end
