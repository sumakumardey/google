# sample creation of linked list

class Node
  attr_accessor :next,:data

  def initialize(data)
    self.data = data
    self.next = nil
  end

  def append_to_tail(data)
    new_node = Node.new(data)
    last_node = self
    while(last_node.next != nil)
      last_node = last_node.next
    end
    last_node.next = new_node
  end

  def delete_node(head,data)
    n = head
    if(n.data == data)
      head = head.next
      retrun head
    end
    while(n.next != nil) do
      current = n
      next_element = current.next
      if(next_element.data == data)
        current.next = next_element.next 
        return head
      end
      n = n.next
    end
  end

  def print_node(head)
    x = "#{head.data} ====>"
    while(head.next != nil) do
      
      head = head.next
      x = x + "#{head.data} ====>"
    end
    p x
  end
end