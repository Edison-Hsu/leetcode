# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
# Your runtime beats 55.56% of rubysubmissions.
def remove_elements(head, val)
    return nil unless head
    prev = h = ListNode.new(0)
    prev.next = c = head
    while(c) do
        if c.val == val
            prev.next  = c.next
        else
            prev = prev.next
        end
        c = c.next
    end
    h.next
end
