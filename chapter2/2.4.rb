# You have two numbers represented by a linked list, where each node contains a sin- gle digit The digits are stored in reverse order, such that the 1’s digit is at the head of the list Write a function that adds the two numbers and returns the sum as a linked list
# EXAMPLE
# Input: (3 -> 1 -> 5) + (5 -> 9 -> 2)


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

  def self.sum_total(node_1,node_2)
    carry = 0
    head = nil
    while((node_1 !=nil) || (node_2 !=nil)) do
      data1 = 0
      data2 = 0
      data1 = node_1.data if(node_1 !=nil)
      data2 = node_2.data if(node_2 !=nil)
      total = (data1 + data2 + carry)
      current_digit = total%10
      carry = total / 10
      unless head 
        head = Node.new(current_digit)
      else
        Node.add_to_tail(head,current_digit)
      end
      node_1 = node_1.next_link if node_1
      node_2 = node_2.next_link if node_2
      if(!node_1 && !node_2)
        Node.add_to_tail(head,carry) if carry !=0
      end
    end

    print_linked_list(head)
  end
end



node_1 = Node.new(3)
Node.add_to_tail(node_1,1)
Node.add_to_tail(node_1,5)
Node.print_linked_list(node_1)

node_2 = Node.new(5)
Node.add_to_tail(node_2,9)
Node.add_to_tail(node_2,2)
Node.print_linked_list(node_2)



