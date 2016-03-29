# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
# Your runtime beats 50.00% of rubysubmissions.
def swap_pairs(head)
    h = ListNode.new(0)
    c = h.next = head
    while c && c.next do
        c.val, c.next.val = c.next.val, c.val
        c = c.next.next
    end
    h.next
end
