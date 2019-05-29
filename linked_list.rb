require_relative "node"
require "pry"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    new_node = Node.new(value, @head)
    @head = new_node
  end

  def get_first
    return @head ? @head.data : nil
  end

  def length
    length = 0
    if !@head
      return length
    else
      current = @head
      while current
        length += 1
        current = current.next
      end
    end
    return length
  end

  def add_last(value)
    new_node = Node.new(value)
    if !@head
      @head = new_node
    else
      current = @head
      while current.next
        current = current.next
      end
      current.next = new_node
    end
  end

  def get_last
    return nil unless @head
    current = @head
    while current.next
      current = current.next
    end
    return current.data
  end

  def get_at_index(index)
    return nil unless @head
    current = @head
    index.times do
      return nil unless current.next
      current = current.next
    end
    return current.data
  end
end
