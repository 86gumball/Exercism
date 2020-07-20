class Matrix
  attr_accessor :rows, :columns

  def initialize(str)
    @rows = str.split(/\n/)
    @rows.map!{ |row_str| row_str.split }.map!{ |row_arr| row_arr.map!{ |digits| digits.to_i }}
    @columns = @rows.transpose
  end

  def saddle_points
    saddle = Array.new
    for i in 0...@rows.length
      for j in 0...@rows[i].length
        c1 = @rows[i][j] == @rows[i].max
        c2 = @rows[i][j] == @columns[j].min
        saddle << [i, j] if c1 && c2
      end
    end
    return saddle
  end
end
