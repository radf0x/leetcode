class LongestPalindromicString
  def self.call(str = 'banana') #longest_palindromic_substring
      substrings = []
      i = 0 # where the palindrome begins
      while i < str.length
        j = i + 1 - i
        while j < str.length + 1
          sub_str = str.slice(i, j)
          if palindrome?(sub_str)
            substrings.push(sub_str)
          end
          j += 1
        end
        i += 1
      end
      i = 0
      longest = ''
      while i < substrings.length
        if substrings[i].length > longest.length
          longest = substrings[i]
        end

        i += 1
      end
      longest
    end

  def self.palindrome?(str)
    #create an array of all substrings
	  #test each item if it is a palindrome => new array
    #find longest palindrome in palArray
  
    i = 0
    while i < str.length
      if str[i] != str[(str.length - 1) - i]
      return false
      end

      i += 1
    end
  end
end
