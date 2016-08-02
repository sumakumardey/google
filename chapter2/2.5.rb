# Given a circular linked list, implement an algorithm which returns node at the begin- ning of the loop
# DEFINITION
# Circular linked list: A (corrupt) linked list in which a node’s next pointer points to an earlier node, so as to make a loop in the linked list
# EXAMPLE
# input: A -> B -> C -> D -> E -> C [the same C as earlier]
# output: C

class Node
  attr_accessor :data, :next_link

  def initialize(data)
    self.data = data
    self.next_link = nil
  end

  # adding an element to the last of the linked list
  def self.add_to_tail(head,data,circular_node = nil)
    while(head.next_link != nil) do
      head = head.next_link
    end
    new_node = Node.new(data)
    head.next_link = new_node
    if circular_node
      new_node.next_link = circular_node
    end
  end


  # printing the linked list data node’s
  def self.print_linked_list(head)
    data  = "#{head.data}"
    while(head.next_link != nil) do
      head = head.next_link
      data = data + "--> #{head.data}"
    end
    puts data
  end

  def self.find_circular(head)
    node1 = node2 = head
    while(node2.next_link != nil) do
      node1 = node1.next_link
      node2 = node2.next_link.next_link
      if node1 == node2
        break
      end
    end
    if node2.next_link == nil
      return false
    end
    node1 = head
    while(node1 != node2)
      node1 = node1.next_link
      node2 = node2.next_link
    end

    return node2
  end
end