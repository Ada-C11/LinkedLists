require_relative "node"
require "pry"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    new_node = Node.new(value)

    new_node.next = @head if !@head.nil?

    @head = new_node
  end

  def get_first
    return @head.nil? ? nil : @head.data
  end

  def length
    current = @head
    count = 0

    while current != nil
      current = current.next
      count += 1
    end

    return count
  end

  def add_last(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      return
    else
      current = @head
      while current.next != nil
        current = current.next
      end

      return current.next = new_node
    end
  end

  def get_last
    return nil if @head.nil?

    if @head.next.nil?
      return @head.data
    else
      current = @head
      while current.next != nil
        current = current.next
      end
    end

    return current.data
  end

  def get_at_index(index)
    return if @head.nil?
    current = @head

    index.times do
      current = current.next
    end

    return current.data
  end
end
