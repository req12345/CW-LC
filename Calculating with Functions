#This time we want to write calculations using functions and get the results. Let's have a look at some examples:

#seven(times(five)) # must return 35
#four(plus(nine)) # must return 13
#eight(minus(three)) # must return 5
#six(divided_by(two)) # must return 3
#Requirements:

#There must be a function for each number from 0 ("zero") to 9 ("nine")
#There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
#Each calculation consist of exactly one operation and two numbers
#The most outer function represents the left operand, the most inner function represents the right operand
#Division should be integer division. For example, this should return 2, not 2.666666...:
#eight(divided_by(three))

def zero(block = nil)
  handle(0, block)
end

def one(block = nil)
  handle(1, block)
end

def two(block = nil)
  handle(2, block)
end

def three(block = nil)
  handle(3, block)
end

def four(block = nil)
  handle(4, block)
end

def five(block = nil)
  handle(5, block)
end

def six(block = nil)
  handle(6, block)
end

def seven(block = nil)
  handle(7, block)
end

def eight(block = nil)
  handle(8, block)
end

def nine(block = nil)
  handle(9, block)
end

def plus(int)
  Proc.new { |x| x + int }
end

def minus(int)
  Proc.new { |x| x - int }
end

def times(int)
  Proc.new { |x| x * int }
end

def divided_by(int)
  Proc.new { |x| x / int }
end

private

def handle(int, block)
  block.nil? ? int : block.call(int)
end



# OTHER

%w[zero one two three four five six seven eight nine].each_with_index do |name, n|
  define_method(name) do |a = n|
     a == n ? a : n.to_f.method(a[0]).call(a[1])
  end
end
actions = [:+, :-, :*, :/]
%w[plus minus times divided_by].each_with_index do |name, i|
  define_method(name) do |n|
    [actions[i], n]
  end
end
