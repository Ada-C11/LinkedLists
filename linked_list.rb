require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    node = Node.new(value)
    node.next = @head if @head
    @head = node
    return true
  end

  def get_first
    return @head ? @head.data : @head
  end

  def length
    count = 0
    curr = @head
    until !curr
      curr = curr.next
      count += 1
    end
    return count
  end

  def add_last(value)
    node = Node.new(value)
    if !@head
      @head = node
    else
      curr = @head
      while curr.next
        curr = curr.next
      end
      curr.next = node
    end
    return true
  end

  def get_last
    return if !@head
    curr = @head
    while curr.next
      curr = curr.next
    end
    return curr.data
  end

  def get_at_index(index)
    count = 0
    curr = @head
    until !curr
      return curr.data if count == index
      curr = curr.next
      count += 1
    end
    return
  end
end
