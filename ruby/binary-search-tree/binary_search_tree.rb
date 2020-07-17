class Bst
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(value)
    if value <= data
      if @left == nil
        @left = Bst.new value
      else
        @left.insert value
      end
    else
      if @right == nil
        @right = Bst.new value
      else
        @right.insert value
      end
    end
  end
end
