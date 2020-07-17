class Series
  attr_reader :str
  def initialize(s)
    @str = s
  end

  def slices(n)
    throw :ArgumentError if n > @str.length

    solve = Array.new
    fst = 0
    while fst + n - 1 < @str.length
      solve << @str.slice(fst, n)
      fst += 1
    end

    return solve
  end
end
