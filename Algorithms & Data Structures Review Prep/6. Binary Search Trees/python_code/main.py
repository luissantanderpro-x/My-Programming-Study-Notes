from enum import Enum

class NodeType(Enum):
    LEFT = 'left'
    RIGHT = 'right'
    PARENT = 'parent'

class TraversalType(Enum):
    PRE = 1
    IN = 2
    POST = 3
    
class Node:
    def __init__(self, data, parent=None):
        self.__data = data
        self.__left_node = None
        self.__right_node = None
        self.__parent = parent 

    def get_node(self, node_type=NodeType.PARENT): 
        node = None 
        if (node_type == NodeType.LEFT):
            node = self.__left_node
        elif (node_type == NodeType.RIGHT):
            node = self.__right_node
        elif (node_type == NodeType.PARENT):
            node = self.__parent 
        return node

    def set_node(self, node, node_type=None) -> None:
        if (node_type == NodeType.LEFT):
            self.__left_node = node
        elif (node_type == NodeType.RIGHT):
            self.__right_node = node
        elif (node_type == NodeType.PARENT):
            self.__parent = node 

    def get_data(self):
        return self.__data

    def set_data(self, data): 
        self.__data = data 

class BinarySearchTree:
    def __init__(self):
        self.__root = None

    def get_root(self) -> Node: 
        return self.__root 

    def __insert_node(self, data: any, node: Node):
        if (data < node.get_data()):
            left_node = node.get_node(NodeType.LEFT)
            if (left_node):
                self.__insert_node(data, left_node)
            else:
                node.set_node(Node(data, node), NodeType.LEFT)
        else:
            right_node = node.get_node(NodeType.RIGHT)
            if (right_node):
                self.__insert_node(data, right_node)
            else:
                node.set_node(Node(data, node), NodeType.RIGHT)

    def __remove_node(self, data, node: Node):
        if (node is None):
            return 

        if (data < node.get_data()):
            self.__remove_node(data, node.get_node(NodeType.LEFT))
        elif (data > node.get_data()):
            self.__remove_node(data, node.get_node(NodeType.RIGHT))
        else:
            if (node.get_node(NodeType.LEFT) is None and node.get_node(NodeType.RIGHT) is None):
                '''Leaf Node Case'''
                print('removing a leaf node...%d' % node.get_data())
                parent = node.get_node()

                if (parent is not None and parent.get_node(NodeType.LEFT) == node):
                    parent.set_node(None, NodeType.LEFT)

                if (parent is not None and parent.get_node(NodeType.RIGHT) == node): 
                    parent.set_node(None, NodeType.RIGHT) 

                if parent is None:
                    self.__root = None 

                del node 
            elif (node.get_node(NodeType.LEFT) is None and node.get_node(NodeType.RIGHT) is not None):
                '''When there is a single right child'''
                print('removing a node with a single right child...')
                parent = node.get_node() 
            
                if (parent is not None and parent.get_node(NodeType.LEFT) == node):
                    parent.set_node(node.get_node(NodeType.RIGHT), NodeType.LEFT)
                if (parent is not None and parent.get_node(NodeType.RIGHT) == node):
                    parent.set_node(node.get_node(NodeType.RIGHT), NodeType.RIGHT)
                if (parent is None):
                    self.__root = node.get_node(NodeType.RIGHT) 

                node.get_node(NodeType.RIGHT).get_node(NodeType.PARENT).set_node(parent, NodeType.PARENT)
                
                del node   
            elif (node.get_node(NodeType.RIGHT) is None and node.get_node(NodeType.LEFT) is not None):
                '''When there is a single left child'''
                print('removing a node with a single left child...') 
                parent = node.get_node()

                if (parent is not None):
                    if (parent.get_node(NodeType.LEFT) == node):
                        parent.set_node(node.get_node(NodeType.LEFT), NodeType.LEFT)
                    if (parent.get_node(NodeType.RIGHT) == node):
                        parent.set_node(node.get_node(NodeType.RIGHT), NodeType.RIGHT)
                else:
                    self.__root = node.get_node(NodeType.LEFT)

                node.get_node(NodeType.RIGHT).get_node(NodeType.PARENT).set_node(parent, NodeType.PARENT)
                
                del node 
            else:
                '''remove a node with two children'''
                predecessor = self.__get_predecessor(node.get_node(NodeType.LEFT))

                temp = predecessor.get_data() 
                predecessor.set_data(node.get_data())
                node.set_data(temp) 

                self.__remove_node(data, predecessor)
                

    def __get_predecessor(self, node):
        if (node.get_node(NodeType.RIGHT)):
            return self.__get_predecessor(node.get_node(NodeType.RIGHT))
        return node 
            
    def insert(self, data):
        if (self.__root is None): 
            self.__root = Node(data)
        else:
            self.__insert_node(data, self.__root)

    def remove(self, data):
        if (self.__root):
            self.__remove_node(data, self.__root)

    def __get_min_value(self, node: Node):
        left_node = node.get_node(NodeType.LEFT) 

        if (left_node):
            return self.__get_min_value(left_node)

        return node.get_data()

    def __get_max_value(self, node: Node): 
        right_node = node.get_node(NodeType.RIGHT)

        if (right_node):
            return self.__get_max_value(right_node)

        return node.get_data() 

    def __traverse_pre_order(self, node): 
        left_node = node.get_node(NodeType.LEFT)
        right_node = node.get_node(NodeType.RIGHT)

        print(node.get_data())
        
        if (left_node): 
            self.__traverse_pre_order(left_node)
            
        if (right_node):
            self.__traverse_pre_order(right_node)
    
    def __traverse_in_order(self, node): 
        left_node = node.get_node(NodeType.LEFT)
        right_node = node.get_node(NodeType.RIGHT)

        if (left_node): 
            self.__traverse_in_order(left_node)

        print(node.get_data())

        if (right_node):
            self.__traverse_in_order(right_node)

    def __traverse_post_order(self, node): 
        left_node = node.get_node(NodeType.LEFT)
        right_node = node.get_node(NodeType.RIGHT)

        if (left_node): 
            self.__traverse_post_order(left_node)

        if (right_node):
            self.__traverse_post_order(right_node)

        print(node.get_data())
    
    def get_min(self):
        if (self.__root):
            return self.__get_min_value(self.__root)

    def get_max(self):
        if (self.__root):
            return self.__get_max_value(self.__root) 

    def traverse(self, traversal_type=TraversalType.IN):
        if (self.__root):
            if (traversal_type == TraversalType.PRE): 
                self.__traverse_pre_order(self.__root)
            elif(traversal_type == TraversalType.POST):
                self.__traverse_post_order(self.__root)
            else:
                self.__traverse_in_order(self.__root)

class TreeComparator:
    def __compare_nodes(self, node1: Node, node2: Node):
        if (node1 is None and node2 is None):
            return True 

        if (node1.get_data() != node2.get_data()):
            return False 
        
        node1_left_node = node1.get_node(NodeType.LEFT)   
        node2_left_node = node2.get_node(NodeType.LEFT) 

        if (node1_left_node is None and node2_left_node):
            return False 
        if (node1_left_node and node2_left_node is None):
            return False 
        elif (node1_left_node and node2_left_node): 
            res = self.__compare_nodes(node1_left_node, node2_left_node) 
            if (res != True):
                return False 
            
        node1_right_node = node1.get_node(NodeType.RIGHT)
        node2_right_node = node2.get_node(NodeType.RIGHT)

        if (node1_right_node is None and node2_right_node):
            return False 
        if (node1_right_node and node2_right_node is None):
            return False 
        elif (node1_right_node and node2_right_node):
            res = self.__compare_nodes(node1_right_node, node2_right_node)
            if (res != True):
                return False 

        return True

    def compare(self, tree1: BinarySearchTree, tree2: BinarySearchTree):
        return self.__compare_nodes(tree1.get_root(), tree2.get_root())


# ===========================================================
'''Testing'''
# bst1 = BinarySearchTree() 
# bst1.insert(100) 
# bst1.insert(50)
# bst1.insert(150)

'''
                100
               /   \
            50     150 


'''

'''removing a leaf node '''

'''Test 2'''
# bst = BinarySearchTree() 
# bst.insert(10)
# bst.insert(5)
# bst.insert(8)
# bst.insert(12)
# bst.insert(-5)
# bst.insert(44)
# # bst.insert(-12)
# # bst.insert(19)
# # bst.insert(22) 

# print('Max value %s' % bst.get_max())

# # Remove a Leaf Node 
# bst.remove(44) 


# bst.traverse()

# print('remove an item that has two children')

# bst.remove(5)


# bst.traverse()

tree1 = BinarySearchTree() 
tree2 = BinarySearchTree() 

tree1.insert(10)
tree1.insert(5)
tree1.insert(8)

tree2.insert(10)
tree2.insert(5)
tree2.insert(8)

tree1.traverse() 
tree2.traverse()

tree_comperor = TreeComparator() 

res = tree_comperor.compare(tree1, tree2)
