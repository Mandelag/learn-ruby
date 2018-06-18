class Descender
  def self.descending(number)
    number.to_s.split("").map {|x| x.to_i}.sort {|x,y| y-x}.join("").to_i
  end
end