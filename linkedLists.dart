// A LinkedList is a linear data structure where each element is a separate object called a node.
// Each node contains two fields: one for data and one for the reference to the next node.
// The first node is called the head. If the LinkedList is empty, the head is a null reference.

class Node {
  Node({
    required this.value,
    this.next,
  });

  final int value;
  Node? next;

}

void main() {
  // Initialize the head of the list
  Node? head = null;

  // Create new nodes and add them to the list
  [2, 6, 7, 1, 5, 8, 3, 9, 4].forEach((int value) {
    // generate Node object
    final newNode = Node(value: value);

    // link the nodes
    if (head == null) {
      // The list is empty, so the new node is the head of the list
      head = newNode;
    } else {
      // The list is not empty, traverse the list to find the last node
      Node temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      // Now temp points to the last node, link the new node
      temp.next = newNode;
    }
  });
  
  Operations().printHead(head);

  // remove element '6' from the list
  Node? headWithoutElement = Operations().removeElements(head, 6);
  if (headWithoutElement != null) {
    print('Removed element, new list: ');
    Operations().printHead(headWithoutElement);
  }

  // sort the list
  Node bubbleSortedList = Operations().bubbleSort(head!, Operations().linkedListLength(head!));
  Operations().printHead(bubbleSortedList);
}

class Operations {
  // utilities
  void printHead(Node? head) {
    // print the list
    Node? temp = head;
    String listString = '';
    if (temp != null) {
      while (temp != null) {
        listString += temp.value.toString() + ' ';
        temp = temp.next;
      }
      print('Generated linked list: $listString');
    }
  }
  int linkedListLength(Node head) {
    int length = 0;
    Node temp = head;
    while (temp.next != null) {
      length++;
      temp = temp.next!;
    }
    return length;
  }
  Node? newHead;
  // Given the head of a linked list and an integer val,
  // remove all the nodes of the linked list that has Node.val == val, and return the new head.
  Node? removeElements(Node? head, int val) {
    if (head == null) {
        return null;
    }
    while (head?.next != null || head?.value != null) {
        if (head?.value != val) {
            final Node newNode = Node(value: head?.value ?? 0);
            if (newHead == null) {
                newHead = newNode;
            } else {
                Node temp = newHead!;
                while (temp.next != null) {
                    temp = temp.next!;
                }
                temp.next = newNode;
            }
        }
        head = head?.next;
    }
    return newHead;
  }
  Node bubbleSort(Node head, int lenght) {
    int iteration = 0;
    bool swapped = false;

    while (iteration < lenght) {
      // the node that eventually will have the highest value
      Node traverseNode = head;
      Node currentNode = head;
      swapped = false;

      while (traverseNode.next != null) {
        // Temporary pointer to store the next
        // pointer of traverseNode
        Node nextNode = traverseNode.next!;
        if (traverseNode.value > nextNode.value) {
          swapped = true;
          if (traverseNode == head) {
            // Performing swap operations and
            // updating the head of the linked list:
            traverseNode.next = nextNode.next;
            nextNode.next = traverseNode;
            currentNode = nextNode;
            head = currentNode;
          } else {
            // Performing swap operation
            traverseNode.next = nextNode.next;
            nextNode.next = traverseNode;
            currentNode.next = nextNode;
            currentNode = nextNode;
          }
          continue;
        }
        currentNode = traverseNode;
        traverseNode = traverseNode.next!;
      }
      // If no swap occurred, break the loop
      if (!swapped) {
          break;
      }
      iteration++;
    }
    return head;
  }
}