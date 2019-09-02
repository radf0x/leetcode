class ParenthesisChecker
def self.call(input = '[({})]')
  stack = []
  input.split('').each_with_index do |char, i|
    case char
    when '[','(','{' then stack << char
    when ']'
      stack.last == '[' ? stack.pop : false
    when ')'
      stack.last == '(' ? stack.pop : false
    when '}'
      stack.last == '{' ? stack.pop : false
    end
  end
  stack.empty?
end
