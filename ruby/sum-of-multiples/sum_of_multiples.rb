class SumOfMultiples
  def initialize(*args)
    @multiples = args
  end

  def to(n)
    r = 0
    for k in 1...n
      r += k if is_mul?(k)
    end
    return r
  end

  def is_mul?(n)
    @multiples.each do |m|
      return true if n % m == 0
    end
    return false
  end
end
