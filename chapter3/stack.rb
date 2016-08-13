class Stack
  atrr_accessor :elements
  def initialize
    @elements = []
  end

  def length
    @elements.length
  end

  def push(element)
    @elements.push(element)
  end

  def pop
    @elements.pop
  end

  def display
    puts "(LeftMost : Oldest Element) " + @elements.join("<-") +" (RightMost : Newest Element)"
  end
end