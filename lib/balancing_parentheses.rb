require_relative './stack'

# your code here

def balancing_parentheses(string)
    stack = Stack.new
    
    string.chars.each do |i|
        if stack.peek == '(' && i==')'
            stack.pop
        else
            stack.push(i)
        end
    end
    stack.size
end
