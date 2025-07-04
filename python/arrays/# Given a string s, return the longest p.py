# Given a string s, return the longest palindromic substring in s.

def expand_around_center(s, left,right):
    while left >= 0 and right < len(s) and s[left] == s[right]:
        left -=1
        right +=1
    return s[left+1:right]
def longest_palindrome(s):
    longest = ""
    for i in range(len(s)):
        #odd lentgh pallinrome
        odd = expand_around_center(s,i,i)
        # even length pallindrome
        even = expand_around_center(s,i,i+1)

        current_longest = odd if len(odd)> len(even) else even


        # update result if current is longer
        if len(current_longest) > len(longest):
            longest = current_longest
    return longest 


print(longest_palindrome("babad")) 
