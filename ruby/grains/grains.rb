class Grains
  def self.square(n)
    throw :ArgumentError if n < 1 || n > 64
    2 ** (n-1)
  end

  def self.total
    r = 0
    for g in 1..64
      r += square(g)
    end
    return r
  end
end
