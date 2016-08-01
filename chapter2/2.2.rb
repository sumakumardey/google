# Implement an algorithm to  nd the nth to last element of a singly linked list

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
    while(head.next_link != nil)
      head = head.next_link
      data = data + "--> #{head.data}" 
    end
    puts data
  end
  
  def self.nth_last_element(head,n)
    first = last = head
    counter = 0
    does_it_exist = false
    # moving last to n-1 place
    while(last.next_link != nil) do
      if(counter < n-1)
        last = last.next_link
        counter += 1
      else
        puts "shifting last and first"
        does_it_exist = true
        last = last.next_link
        if(last.next_link !=nil)
          first = first.next_link
        end
      end
    end

    if(does_it_exist)
      return first
    else
      return false
    end
  end

end


head = Node.new("1")
Node.add_to_tail(head,"2")
Node.add_to_tail(head,"3")
Node.add_to_tail(head,"4")
Node.add_to_tail(head,"5")
Node.nth_last_element(head,1)