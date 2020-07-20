class Triplet
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def sum
    @x + @y + @z
  end

  def product
    @x * @y * @z
  end

  def pythagorean?
    @x**2 + @y**2 == @z**2
  end

  def self.where(min_factor: 1, max_factor: 0, sum: 0)
    pyth_triplets = Array.new

    if sum == 0

      for a in min_factor...max_factor
        for b in a...max_factor
          c = Math.sqrt(a**2 + b**2).truncate
          tr = Triplet.new(a, b, c)
          pyth_triplets << tr if tr.pythagorean?
        end
      end

     else
       for a in min_factor...max_factor
         for b in a...max_factor
           c = Math.sqrt(a**2 + b**2).truncate
           tr = Triplet.new(a, b, c)
           pyth_triplets << tr if tr.pythagorean? and a + b + c == sum
         end
       end
     end

    return pyth_triplets
  end
end
