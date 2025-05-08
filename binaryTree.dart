
// Definition for a binary tree node.
  class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

// https://youtu.be/b_NjndniOqY?si=qactvY3qln3lW9f_
// https://algo.monster/liteproblems/94
// https://workshape.github.io/visual-graph-algorithms/
// https://leetcode.com/problems/binary-tree-inorder-traversal/

// example logs for https://assets.leetcode.com/uploads/2024/08/29/tree_2.png
// 1 2
// 2 5
// 2 7
// 3 7 null
// 1 4
// 3 4 null
// 1 4
// 3 4 Instance of 'TreeNode'
// 1 6
// 3 6 null
// 1 6
// 3 6 Instance of 'TreeNode'
// 1 2
// 2 5
// 2 7
// 3 7 Instance of 'TreeNode'
// 1 9
// 3 9 null
// 1 9
// 3 9 Instance of 'TreeNode'

List<int> inorderTraversal(TreeNode? root) {
  // Initialize an empty list to store the inorder traversal result
  List<int> ans = <int>[];
  // Continue the process until all nodes are visited
  while (root != null) {
      // If there is no left child, visit the current node and go to the right child
      if (root.left == null) {
          ans.add(root.val);
          root = root.right;
      } else {
          // Find the inorder predecessor of the current node
          TreeNode predecessor = root.left!;
          print('1 ${predecessor.val}');
          // Move to the rightmost node of the left subtree or
          // the right child of the predecessor if it's already set
          while (predecessor.right != null && predecessor.right != root) {
              predecessor = predecessor.right!; 
              print('2 ${predecessor.val}');
          }
          // If the right child of the predecessor is not set,
          // this means this is our first time visiting this node, thus,
          // set the right child to the current node and move to the left child
          print('3 ${predecessor.val} ${predecessor.right}');
          if (predecessor.right == null) {
              predecessor.right = root;
              root = root.left;
          } else {
              // If the right child is already set to the current node,
              // it means we are visiting the node the second time.
              // Thus, we should visit the current node and remove the link.
              ans.add(root.val);
              predecessor.right = null;
              root = root.right;
          }
      }
  }
  return ans;
}