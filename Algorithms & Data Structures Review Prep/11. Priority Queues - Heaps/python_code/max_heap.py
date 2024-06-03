from typing import List 

# MARK - Constants 

CAPACITY = 10 

# MARK: - Heap Data Structure 

class Heap:
    def __init__(self):
        # this is the actual number of items in the ds 
        self.heap_size = 0 
        # the underlying list data structure. 
        self.heap = [0] * CAPACITY

    # starts with the actual node we have inserted up to the root node. 
    # we have to compare the values whether to make swap operations 
    # O(log*N) running time complexity. 
    def __fix_up(self, index: int): 
        parent_index = (index - 1) // 2 

        # we consider all the items above till we hit the root node. 
        # if heap property if violated then we swap the parent-child. 
        if (index > 0 and self.heap[index] > self.heap[parent_index]):
            self.heap[index], self.heap[parent_index] = self.heap[parent_index], self.heap[index] 
            self.__fix_up(parent_index) 

    # starting with the root node downwards until the heap properties are no longer violated - O(log*N) 
    def __fix_down(self, index): 
        left_index = 2 * index + 1 
        right_index = 2 * index + 2 

        # in a max heap the parent is always the greater than the children. 
        largest_index = index 

        if (left_index < self.heap_size and self.heap[left_index] > self.heap[index]):
            largest_index = left_index

        # if the right child is greater than the left child: largest is the right child. 
        if (right_index < self.heap_size and self.heap[right_index] > self.heap(largest_index)):
            largest_index = right_index

        if index != largest_index: 
            self.heap[index], self.heap[largest_index] = self.heap[largest_index], self.heap[index]
            self.__fix_down(largest_index)

    def peek(self) -> int: 
        '''returns the maximum item in the heap.'''
        return self.heap[0] 
    
    def poll(self) -> int: 
        '''returns the max value and removes it as well'''
        max_item = self.peek() 

        # swap the root node with the last item and 'heapify' 
        self.heap[0], self.heap[self.heap_size - 1] = self.heap[self.heap_size - 1], self.heap[0] 
        self.heap_size = self.heap_size - 1 

        self.__fix_down(0) 

        return max_item 


    def insert(self, item):
        '''inserts an item into the heap'''
        if self.heap_size == CAPACITY:
            return 
        
        self.heap[self.heap_size] = item 
        self.heap_size = self.heap_size + 1 

        # checks the heap properties 
        self.__fix_up(self.heap_size - 1) 

    def heap_sort(self): 
        for _ in range(self.heap_size):
            max_item = self.poll() 
            print(max_item) 


# MARK: - Testing 

if __name__ == '__main__':
    heap = Heap()   
    heap.insert(23)
    heap.insert(5)
    heap.insert(78) 
    heap.insert(2)
    heap.insert(92)
    heap.insert(12) 
    heap.insert(21) 
    heap.insert(99)

    print(heap.peek())