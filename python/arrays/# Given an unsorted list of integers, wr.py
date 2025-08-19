# Given an unsorted list of integers, write a function to 
# find the length of the longest
# sequence of consecutive numbers.


def longest_sequence(numbers):
    filtered_numbers  = set(numbers)
    longest = 0
    for num in filtered_numbers:
        if num-1 not in filtered_numbers:
            current = num
            count = 1
             
            while current + 1 in filtered_numbers:
                current +=1
                count +=1

            longest = max(longest, count)
    return longest

print(longest_sequence([100, 4, 200, 1, 3, 2]))

