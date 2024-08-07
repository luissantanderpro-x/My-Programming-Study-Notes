from typing import List 

def merge_sort(nums: List[int]):
    if (len(nums) == 1):
        return 

    # Divide Phase 
    middle_index = len(nums) // 2
    
    left_half = nums[:middle_index]
    right_half = nums[middle_index:] 

    merge_sort(left_half)
    merge_sort(right_half) 
    
    # Conquer Phase 
    i = 0 
    j = 0 
    k = 0 

    while (i < len(left_half) and j < len(right_half)):
        if (left_half[i] < right_half[j]): 
            nums[k] = left_half[i] 
            i = i + 1 
        else:
            nums[k] = right_half[j]
            j = j + 1 
        k = k + 1 

    while (i < len(left_half)): 
        nums[k] = left_half[i]
        i = i + 1
        k = k + 1 

    while (j < len(right_half)): 
        nums[k] = right_half[j] 
        j = j + 1 
        k = k + 1 

if __name__ == '__main__': 
    # Testing
    # =============================================
    l = [1, 5, -2, 0, 10, 100, 55, 12, 10, 2, -10, -3]

    merge_sort(l) 

    print(l) 

    l2 = [3, 2, 6, 4, 1]

    merge_sort(l2) 

    print(l2)