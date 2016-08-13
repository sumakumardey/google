class Node
  attr_accessor :name,:successors, :visited

  def initialize(name)
    self.name = name
    self.successors = []
  end

  def add_edge(successors)
    self.successors << successors
  end

  def to_s
    "#{@name} -> [#{@successors.map(&:name).join(' ')}]"
  end
end



class Graph
  def initialize
    @nodes = {}
  end

  def add_node(node)
    @nodes[node.name] = node
  end

  def add_edge(predecessor_name, successor_name)
    @nodes[predecessor_name].add_edge(@nodes[successor_name])
  end

  def [](name)
    @nodes[name]
  end
end

def dfs(graph,source,destination)
  node_stack = [graph[source]]
  loop do
    current_node = node_stack.pop
    return false if curr_node == nil
    return true if curr_node == graph[destination]
    
  end
end