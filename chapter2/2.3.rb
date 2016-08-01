# Implement an algorithm to delete a node in the middle of a single linked list, given only access to that node
# EXAMPLE
# Input: the node ‘c’ from the linked list a->b->c->d->e
# Result: nothing is returned, but the new linked list looks like a->b->d->e


class Node
  attr_accessor :data, :next_link

  def initialize(data)
    self.data = data
    self.next_link = nil
  end

  # adding an element to the last of the linked list
  def self.add_to_tail(head,data)
    while(head.next_link != nil) do
      head = head.next_link
    end
    new_node = Node.new(data)
    head.next_link = new_node
  end

  # printing the linked list data nodes
  def self.print_linked_list(head)
    data  = "#{head.data}"
    while(head.next_link != nil) do
      head = head.next_link
      data = data + "--> #{head.data}"
    end
    puts data
end

# delete the node
  def self.delete_the_node(node)
    return "can't be delete" if node.next_link == nil
    while(node.next_link != nil) do
      node.data = node.next_link.data
      node.next_link = node.next_link.next_link
    end

  end
end
