# Given the heads of two singly linked-lists headA and headB, 
# return the node at which the two lists intersect. If the two 
# linked lists have no intersection at all, return null.


def getIntersectionNode(headA, headB):
    if not headA or not headB:
        return None
    
    pA , pB = headA , headB
    while pA is not pB:
        pA = pA.next if pA else headB
        pB = pB.next if pB else headA
    return pA