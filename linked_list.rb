# frozen_string_literal: true

require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    new_node = Node.new(value)
    new_node.next = @head unless @head.nil?
    @head = new_node
  end

  def get_first
    return nil if @head.nil?

    @head.data
  end

  def length
    current = @head
    count = 0

    until current.nil?
      current = current.next
      count += 1
    end
    count
  end

  def add_last(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next until current.next.nil?
      current.next = new_node
    end
  end

  def get_last
    return nil if @head.nil?

    current = @head
    current = current.next until current.next.nil?
    current.data
  end

  def get_at_index(index)
    return nil if @head.nil?

    count = 0
    current = @head
    while count != index && !current.next.nil?
      current = current.next
      count += 1
    end
    current.data
  end
end
