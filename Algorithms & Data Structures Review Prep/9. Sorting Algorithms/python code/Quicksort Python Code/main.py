from typing import List

class Quicksort:
    def __init__(self, data: List[int]) -> None:
        self.data = data 

    def sort(self) -> None:
        self.quick_sort(0, len(self.data)-1)

    def quick_sort(self, low: int, high: int):
        if (low >= high):
            return 

        pivot_index = self.partition(low, high)
        self.quick_sort(low, pivot_index - 1) 
        self.quick_sort(pivot_index + 1, high) 
            
    def partition(self, low, high) -> int: 
        pivot_index = (low + high) // 2

        self.data[pivot_index], self.data[high] = self.data[high], self.data[pivot_index]
        self.p() 

        for j in range(low, high):
            if (self.data[j] <= self.data[high]):
                self.data[low], self.data[j] = self.data[j], self.data[low]
                self.p()
                low = low + 1 

        self.data[low], self.data[high] = self.data[high], self.data[low]

        self.p() 

        return low 

    def p(self): 
        print(':', self.data) 

# Testing 

list1 = [7,-2,5,8,1,6]

qs = Quicksort(list1) 

qs.sort() 