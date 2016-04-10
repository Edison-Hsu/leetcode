# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    return l2 if l1.nil?
    return l1 if l2.nil?

    cur = head = ListNode.new(0)
    cur_l1, cur_l2 = l1, l2

    while cur_l1 || cur_l2 do
        if cur_l1 && cur_l2 && (cur_l1.val <= cur_l2.val)
            cur.next = cur_l1
            cur_l1 = cur_l1.next
            cur = cur.next
        elsif cur_l2.nil?
            cur.next = cur_l1
            cur_l1 = cur_l1.next
            cur = cur.next
        else
            cur.next = cur_l2
            cur_l2 = cur_l2.next
            cur = cur.next
        end
    end

    head.next
end
