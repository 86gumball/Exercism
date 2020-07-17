class School
  def initialize
    @students_hash = Hash.new { |hash, key| hash[key] = [] }
  end

  def add(name, grade)
    @students_hash[grade] << name
    @students_hash[grade].sort!
    # @students_hash[grade].push(name)
  end

  def students(n)
    @students_hash[n]
  end
  
  def students_by_grade
    @students_hash.sort
  end
end
