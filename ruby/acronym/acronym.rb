class Acronym
  def self.abbreviate(str)
    str.split(/\s|-/).map { |s| s.chars.first }.join.upcase
  end
end
