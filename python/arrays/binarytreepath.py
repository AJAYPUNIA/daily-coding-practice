# Given the root of a binary tree, return all root-to-leaf paths in any order.

# A leaf is a node with no children.


# Input: root = [1,2,3,null,5]
# Output: ["1->2->5","1->3"]



def bianrytreepath(root, TreeNode):
    if not root:
        return []
    
    res = []

    def dfs(node : TreeNode , path : list[int]):
        path.append(node.val)

        if not node.left and not node.right:
            res.append("->".join(map(str,  path)))
        else:
            if node.left:
                dfs(node.left, path)
            if node.right:
                dfs(node.right, path)
        path.pop()
    dfs(root,[])
    return res