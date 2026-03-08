/*
the problem link:
https://leetcode.com/problems/add-two-numbers
 */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(0);
    ListNode current = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int sum = carry;
      if (l1 != null) {
        sum += l1.val;
        l1 = l1.next;
      }
      if (l2 != null) {
        sum += l2.val;
        l2 = l2.next;
      }

      carry = sum ~/ 10;
      current.next = ListNode(sum % 10);
      current = current.next!;
    }

    return dummy.next;
  }
}

void printList(ListNode? node) {
  List result = [];
  while (node != null) {
    result.add(node.val);
    node = node.next;
  }
  print(result);
}

void main() {
  // l1 = [2,4,3]
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));

  // l2 = [5,6,4]
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));

  Solution sol = Solution();
  ListNode? result = sol.addTwoNumbers(l1, l2);

  printList(result);
}
