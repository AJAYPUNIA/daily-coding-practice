def missingnumber(nums):
    pos = 0
    for i in range(len(nums)):
        if nums[i] != 0:
            nums[i] = nums[pos]
            pos +=1
    while pos< len(nums):
        nums[pos]= 0 
print(missingnumber([0,1,0,3,12]))