class PerfectNumber
  def self.classify(n)
    raise "test" if n < 1
    ali_sum = factors(n).reduce(:+)
    return 'deficient' if ali_sum < n
    return 'perfect' if ali_sum == n
    return 'abundant' if ali_sum > n
  end

  def self.factors(n)
    ret = [1]
    for i in 2..(n/2 + 1)
      ret << i if n % i == 0
    end
    ret
  end
end
