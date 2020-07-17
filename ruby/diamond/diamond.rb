class Diamond
  def self.make_diamond(arg)
    throw :ArgumentError if arg.length > 1
    max_dis = arg.bytes[0] - 'A'.bytes[0]
    cur_dis = 0

    str = ""
    max_dis.times {str << " "}
    str << "A"
    max_dis.times {str << " "}
    str << "\n"

    if max_dis == 0
      return str
    end

    for cur_dis in 1..max_dis
      (max_dis - cur_dis).times {str << " "}
      str << ("A".bytes[0] + cur_dis).chr.to_s
      (cur_dis*2 - 1).times {str << " "}
      str << ("A".bytes[0] + cur_dis).chr.to_s
      (max_dis - cur_dis).times {str << " "}
      str << "\n"
    end

    for cur_dis in (max_dis - 1)..1
      (max_dis - cur_dis).times {str << " "}
      str << ("A".bytes[0] + cur_dis).chr.to_s
      (cur_dis*2 - 1).times {str << " "}
      str << ("A".bytes[0] + cur_dis).chr.to_s
      (max_dis - cur_dis).times {str << " "}
      str << "\n"
    end

    max_dis.times {str << " "}
    str << "A"
    max_dis.times {str << " "}
    str << "\n"
    
    return str
  end
end
