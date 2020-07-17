class Raindrops
  def self.convert(n)
    str = String.new
    str << "Pling" if n % 3 == 0
    str << "Plang" if n % 5 == 0
    str << "Plong" if n % 7 == 0
    str << n.to_s if str.empty?
    return str
  end
end
