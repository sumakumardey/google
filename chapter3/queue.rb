class QueueData
  attr_accessor :elements

  def initialize
    @elements ||= []
  end

  def enqueue(value)
    @elements.push(value)
  end

  def dequeue
    @elements.shift
  end
end