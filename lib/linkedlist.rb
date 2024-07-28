class LinkedList

  class Node
    attr_accessor :value, :next_node

    def initialize(value=nil)
      @value = value
      @next_node = nil
    end
  end

  private_constant :Node
  attr_accessor :source

  def initialize
    @source = nil
  end

  def append(value)
    new_node = Node.new(value)
    if self.source.nil?
      self.source = new_node
    else
      current = self.source
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if self.source.nil?
      self.source = new_node
    else
      new_node.next_node = self.source
      self.source = new_node
    end
  end

  def size
    count = 0
    if self.source.nil?
      return 0
    else
      current = self.source
      while current.next_node
        count += 1
        current = current.next_node
      end
      count += 1
    end
    count
  end

  def head
    return 'The list is empty' if self.source.nil?
    self.source
  end

  def to_s
    if self.source.nil?
      puts 'The list is empty.'
    else
       current = self.source
       while current.next_node
        print "( #{current.value} ) -> "
        current = current.next_node
       end
       puts "( #{current.value} ) -> nil"

    end
  end


end

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
# puts ll.head.value
list.to_s
# puts ll.source.value, ll.source.next_node.value, ll.source.next_node.next_node.value, ll.source.next_node.next_node.next_node.value, ll.source.next_node.next_node.next_node.next_node.value
