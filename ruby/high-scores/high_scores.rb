class HighScores
  def initialize(arr)
    @scores_arr = Array.new
    @scores_arr.concat(arr) if arr.is_a? Array
  end

  def scores
    @scores_arr
  end

  def latest
    @scores_arr[-1]
  end

  def personal_best
    @scores_arr.max
  end

  def latest_is_personal_best?
    self.personal_best == self.latest
  end

  def personal_top_three
    @scores_arr.max(3)
  end
end
