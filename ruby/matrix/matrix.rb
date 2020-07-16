class Matrix
  attr_reader :rows, :columns
  def initialize(str)
    @rows = str.split(/\n/)
    @rows.map!{ |row_str| row_str.split }.map!{ |row_arr| row_arr.map!{ |digits| digits.to_i }}
    @columns = @rows.transpose
  end
end
