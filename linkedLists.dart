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

    // iterate over the whole linked list
    // https://github.com/FeelHippo/JavascriptNinjaSkills/blob/9455d3f38bab21727cb10e0d87251b83f5c6959d/interviewQuestions.dart#L30
    while (iteration < lenght) {
      // the traversing node, starts from head every iteration
      // e.g. [6, 2, 7, 4]
      Node traverseNode = head;
      // the traversing node, starts from head every iteration
      // e.g. [6, 2, 7, 4]
      Node currentNode = head;
      swapped = false;

      // traverse the entire linked list 
      // https://github.com/FeelHippo/JavascriptNinjaSkills/blob/9455d3f38bab21727cb10e0d87251b83f5c6959d/interviewQuestions.dart#L31
      while (traverseNode.next != null) {
        // Temporary pointer to store traverseNode's next node
        // e.g. [6 (== traverseNode), 2 (== nextNode), 7]
        Node nextNode = traverseNode.next!;
        // if current value > next value => swap
        // https://github.com/FeelHippo/JavascriptNinjaSkills/blob/9455d3f38bab21727cb10e0d87251b83f5c6959d/interviewQuestions.dart#L32
        // e.g. if (6 > 2) => true
        if (traverseNode.value > nextNode.value) {
          swapped = true;
          // very fist iteration
          // e.g. 6 (== traverseNode) ==  head => true
          if (traverseNode == head) {
            // Performing swap operations and
            // updating the head of the linked list:

            // e.g. 6.next = 7
            traverseNode.next = nextNode.next;
            // e.g. 2.next = 6
            nextNode.next = traverseNode;
            // e.g. swap 6 with 2
            currentNode = nextNode;
            // e.g. head == 2
            head = currentNode;

            // e.g. result is [2, 6, 7]
          } else {
            // Performing swap operation
            // e.g. traverseNode == 7, nextNode == 4
            // [2, 6, 7, 4]

            // e.g. 7.next = null
            // swap traverseNode(high value) with nextNode(low value)
            traverseNode.next = nextNode.next;
            // e.g. 4.next = 7
            nextNode.next = traverseNode;
            // e.g. 6.next = 4
            // prepare next iteration. currentNode was 6 from [2, 6, 7, 4]
            // new status is [2, 6, 4, 7], where 6(current node).next is now 4
            // at next iteration, 6 will be compared with 4
            currentNode.next = nextNode;
            // e.g. current node = 4
            currentNode = nextNode;
          }
          // traverse node now is unchanged. e.g. 7, because we traverse the original head
          // at the next iteration, 4.next == null, and the loop will break
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