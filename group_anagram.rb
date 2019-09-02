class GroupAnagram
  # Data Structure
  # result = { 'sorted_word': ['original_word'], 'another_sorted_word': ['original_word] }
  def self.call(words = ['cat','dog','tac','god','act'])
    res = {} # list of grouped words [ ['cat'], ['dog']]
    return res if words.empty? # base condition

    words.each do |word| # check each word in words
      sorted_word = word.chars.sort.join # split the string into char array and sort it alphabetically
      if res.key?(sorted_word) # see if result has the sorted_word already
        words = res[sorted_word] # retrieve the array of words inside the sorted_word object
        words.append(word) # append the origin word
        res[sorted_word] = words # update sorted_word object
        res # return updated object
      else
        res[sorted_word] = [word] # create a sorted_word object with key = sorted_word, array first element of the original word
        res # return updated object
      end
    end
    res # return result
  end
end
