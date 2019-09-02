class RotateString
  def self.call(str1 = 'abc', str2 = 'cab')
    return false if str1.length != str2.length

    (str1.concat str1).include? str2
  end
end
