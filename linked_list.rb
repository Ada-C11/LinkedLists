require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    new_node = Node.new(value)
    if !@head.nil?
      new_node.next = @head
    end
    @head = new_node
  end

  def get_first
    return nil if @head == nil
    return @head.data
  end

  def length
    count = 1
    return 0 if @head == nil
    current = @head
    while current.next != nil
      current = current.next
      count += 1
    end

    return count
  end

  def add_last(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head

      while current.next != nil
        current = current.next
      end
      current.next = new_node
    end
  end

  def get_last
    return nil if @head.nil?
    current = @head
    while current.next != nil
      current = current.next
    end

    return current.data
  end

  def get_at_index(index)
    return nil if @head.nil?
    count = 0
    current = @head
    while count != index && current.next != nil
      current = current.next
      count += 1
    end
    return current.data
  end
end
