# https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
#
# Given a sorted linked list, delete all nodes that have duplicate numbers,
# leaving only distinct numbers from the original list.
#
# For example:
#
#     Given 1 -> 2 -> 3 -> 3 -> 4 -> 4 -> 5, return 1 -> 2 -> 5.
#     Given 1 -> 1 -> 1 -> 2 -> 3, return 2 -> 3.

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
def delete_duplicates(head)
  dummy = ListNode.new(0).tap { |t| t.next = head }

  curr, prev = head, dummy

  cursor = head
  while cursor
    val, dup = cursor.val, false
    
    cursor = cursor.next
    while cursor.next && cursor.next.val == cursor.val
      dup = true
      cursor = cursor.next
    end

    if cursor.nil?
      curr, curr.next = val, nil
      prev.next = nil if dup
      break 
    end
    
    next if dup
    curr.val = val
    curr.next, prev = curr.next, curr
  end
end
