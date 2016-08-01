# Write code to remove duplicates from an unsorted linked list FOLLOW UP
# How would you solve this problem if a temporary buffer is not allowed?

class Node
  attr_accessor :next_link, :data

  def initialize(data)
    self.data = data
    self.next_link = nil
  end

  def print_list(head)
    p head
  end

  def add_to_tail(data)
    head = self
    last = head
    while last.next_link != nil do
      last = last.next_link
    end
    new_node = Node.new(data)
    last.next_link = new_node
  end

  def remove_duplicate(head)
    first  = head
    while(first.next_link != nil) do
      temp = first
      while(temp.next_link != nil) do
        previous = temp
        temp = temp.next_link
        if(temp.data == first.data)
          previous.next_link = temp.next_link
          temp = previous
        end
      end
      first = first.next_link
    end
    p head
  end
end

head = Node.new("1")
head.add_to_tail("2")
head.add_to_tail("2")
head.add_to_tail("1")
head.add_to_tail("4")