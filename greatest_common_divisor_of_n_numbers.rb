class GCD
  def self.call(arr)
    result = arr.min
    i = 0
    arr.length.times do
      result = find_gcd(arr[i], result)
      i += 1
      result
    end
    result
  end

  def self.find_gcd(a,b)
    if b == 0
      return a
    else
      self.find_gcd(b, a % b)
    end
  end
end