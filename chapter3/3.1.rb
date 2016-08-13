# Describe how you could use a single array to implement three stacks

class Stack
  attr_accessor :elements, :stack_pointer, :number_of_stack

  def initialize(number_of_stack)
    self.number_of_stack = number_of_stack
    self.stack_pointer  = Array.new(number_of_stack)
    self.elements ||= []
  end

  def push(stacknum,value)
    current_index = stacknum - 1
    self.elements[(self.stack_pointer[current_index].to_i*self.number_of_stack)+current_index] = value 
    self.stack_pointer[current_index] = self.stack_pointer[current_index].to_i + 1
    value
  end

  def pop(stacknum)
    current_index = stacknum - 1
    return "empty" if self.stack_pointer[current_index] == 0
    top = (self.stack_pointer[current_index].to_i*self.number_of_stack)-current_index
    self.stack_pointer[current_index] -= 1
    temp = elements[top]
    elements[top] = nil
    temp
  end
end