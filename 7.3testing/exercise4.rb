class DeepCounter
  def self.deep_count(arr)
    result = arr.length
    result += arr.select {|x| x.instance_of? Array}.sum{ |x| x.length > 0? deep_count(x) : 1}
    result
  end
end