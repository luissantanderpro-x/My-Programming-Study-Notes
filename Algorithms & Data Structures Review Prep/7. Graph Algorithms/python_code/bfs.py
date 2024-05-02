# Breadth-First Search (Python Script Implementation)

class Node:
    def __init__(self, name=''):
        self.name = name 
        self.adjacency_list = []
        self.visited = False 

    def __repr__(self) -> str:
        return f'node: {self.name}'
    
def breadth_first_search(start_node: Node): 
    queue = [start_node]
    start_node.visited = True 

    while queue:
        actual_node = queue.pop(0) 

        print(actual_node)

        for neighbor in actual_node.adjacency_list:
            if (not neighbor.visited):
                neighbor.visited = True 
                queue.append(neighbor) 

print('Breadth-First Search Algorithm Example...')

# Graph Nodes 
node1 = Node('A')
node2 = Node('B') 
node3 = Node('C') 
node4 = Node('D') 
node5 = Node('E') 

# we have to connect the nodes to build the graph 
node1.adjacency_list.append(node2)
node1.adjacency_list.append(node3) 
node2.adjacency_list.append(node4) 
node4.adjacency_list.append(node5) 

# run the bfs 
breadth_first_search(node1) 