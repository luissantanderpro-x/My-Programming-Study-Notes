# AVL Tree

class Node:
    def __init__(self, data: any, parent: 'Node' = None) -> None:
        self.data = data
        self.left_node = None
        self.right_node = None
        self.parent = parent
        self.height = 0

    def __repr__(self) -> str:
        return f'Node: {self.data}'

class AVLTree:
    def __init__(self) -> None:
        '''we can access the root node exclusively'''
        self.root = None

    def __calc_height(self, node: Node) -> int: 
        '''Calculates the height of the AVL tree.'''
        if (node is None): 
            return -1
        return node.height

    def __calculate_balance(self, node: Node) -> int: 
        '''calculates the balance of the AVL tree'''
        if node is None:
            return 0
        return self.__calc_height(node.left_node) - self.__calc_height(node.right_node)
    
    # checks whether the subtree is balanced with root node = node 
    def __violation_helper(self, node: Node) -> None: 
        '''conducts rotations on the AVL tree if it's un-balanced.'''
        balance = self.__calculate_balance(node) 
        # we know the tree is left heavy BUT it can be left-right heavy or left-left heavy.
        if (balance > 1):
            # left right heavy situation: left rotation on parent + right rotation on grandparent.
            if (self.__calculate_balance(node.left_node) < 0): 
                self.__rotate_left(node.left_node)
            
            # this is the right rotation on grandparent (if left-left heavy, that's single right rotation.)
            self.__rotate_right(node) 
        
        # we know the tree is right heavy BUT it can be left-right heavy or right-right heavy.
        if (balance < -1):
            # right - left heavy so we need a right direction before left rotation. 
            if (self.__calculate_balance(node.right_node) > 0):
                self.__rotate_right(node.right_node)

                # left rotation
                self.__rotate_left(node) 

    def __insert_node(self, data: any, node: Node):
        '''inserts the data to either left or right side.'''
        # we have to consider the left subtree 
        if (data < node.data):
            # we have to check if the left node is a None
            # when the left child is not a None 
            if (node.left_node):
                self.__insert_node(data, node.left_node)
            else:
                node.left_node = Node(data, node) 
                node.height = max(self.__calc_height(node.left_node), self.__calc_height(node.right_node)) + 1
        else:
            # we have to check if the right node is a None
            # when the right child is not None 
            if (node.right_node):
                self.__insert_node(data, node.right_node)
            else:
                node.right_node = Node(data, node) 
                node.height = max(self.__calc_height(node.left_node), self.__calc_height(node.right_node)) + 1
        
        # after every insertion WE HAVE TO CHECK whether the AVL properties are violated.
        self.__handle_violations(node) 

    def __remove_node(self, data: any, node: Node):
        if (node is None):
            return
        
        if (data < node.data):
            self.__remove_node(data, node.left_node)
        elif (data > node.data):
            self.__remove_node(data, node.right_node) 
        else:
            # we have found the node we want to remove. 
            # case #1 if the node is a leaf node 
            if (node.left_node is None and node.right_node is None):
                print('Removing a leaf node...%d' % node.data)
                parent = node.parent

                if (parent is not None and parent.left_node == node):
                    parent.left_node - None 
                if (parent is not None and parent.right_node == node):
                    parent.right_node = None 

                if (parent is None):
                    self.root = None 
                
                del node 

                # after every insertion WE HAVE TO CHECK whether the AVL properties are violated.
                self.__handle_violations(parent) 
            
            # case 2:) if the node has a single child.
            elif (node.left_node is None and node.right_node is not None):
                print('Removing a node with single right child...') 
                parent = node.parent

                if (parent is not None):
                    if (parent.left_node == node):
                        parent.left_node = node.right_node
                    if (parent.right_node == node):
                        parent.right_node = node.right_node
                else:
                    self.root = node.right_node
                
                node.right_node.parent = parent 
                del node 

                self.__handle_violations(parent) 
            
            elif (node.right_node is None and node.left_node is not None):
                print('Removing a node with single left child...') 
                parent = node.parent

                if (parent is not None):
                    if (parent.left_node == node):
                        parent.left_node = node.left_node
                    if (parent.right_node == node):
                        parent.right_node = node.left_node
                else:
                    self.root = node.left_node
                
                node.left_node.parent = parent 
                del node 

                self.__handle_violations(parent) 
            
            # case 3 the node has 2 children 
            else: 
                print('Removing node with two children.....') 
                predecessor = self.__get_predecessor(node.left_node) 

                temp = predecessor.data 
                predecessor.data = node.data 
                node.data = temp 

                self.__remove_node(data, predecessor) 

    def __get_predecessor(self, node: Node):
        if (node.right_node):
            return self.__get_predecessor(node.right_node)
        return node 

    def __handle_violations(self, node: Node):
        '''checks if AVL tree properties have been violated or not.'''
        # check the nodes from the node we have inserted up to the root node. 
        while node is not None: 
            node.height = max(self.__calc_height(node.left_node), 
                              self.__calc_height(node.right_node)) + 1 
            self.__violation_helper(node) 
            # whenever we settle a violation (rotation) it may happen 
            # violates the AVL properties in other part of the tree 
            node = node.parent

    def remove(self, data: any):
        '''removes a node from the AVL Tree'''
        if (self.root):
            self.__remove_node()

    def insert(self, data: any) -> None: 
        '''inserts data to the avl tree.'''
        if (self.root is None):
            self.root = Node(data)
        else:
            self.__insert_node(data, self.root) 
        
        # after every insertion WE HAVE TO CHECK whether the AVL properties
        # are violated 
        self.__handle_violations(self.root) 

if __name__ == '__main__':
    avl = AVLTree() 

    avl.insert('A') 
    avl.insert('B')