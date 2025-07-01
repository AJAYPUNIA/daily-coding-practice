# a function that takes a list of integers and 
# returns all unique triplets [a, b, c] such that a + b + c == 0.
# The result should not contain duplicate triplets.


def unique_triplet(nums):
    nums = sorted(nums)
    result = []

    for i in range(len(nums)-2):
        if i > 0 and nums[i] == nums[i-1]:
            continue

        #set two pointers
        left = i +1
        right = len(nums)-1
        
        while left < right:
            total =  nums[i]+nums[left]+nums[right]

            if total == 0:
                result.append([nums[i],nums[left],nums[right]])
                # skip duplicates for second and third numbers
                while left<right  and nums[left] == nums[left+1]:
                    left+=1
                while left<right and nums[right] == nums[right-1]:
                    right-=1
                #move both pointers
                left+=1
                right-=1

            elif total < 0:
                left+=1
            else:
                right-=1

    return result

print(unique_triplet([-1, 0, 1, 2, -1, -4]))

            

    

