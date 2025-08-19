# Given an integer array nums where the elements are sorted in ascending order, convert it to a height-balanced binary search tree.



# solution


def sortedArrayToBST(self, nums: List[int]) -> Optional[TreeNode]:
        def built(lo : int , hi: int) -> 'TreeNode | None':
            if lo > hi:
                  return None
            mid = (lo + hi) // 2
            node =  TreeNode(nums[mid])
            node.left = built(lo , mid - 1)
            node.right = built(mid + 1, hi)
            return node
        return built(0 , len(nums) - 1)