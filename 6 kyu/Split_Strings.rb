'''
DESCRIPTION:
Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace
the missing second character of the final pair with an underscore ('_').

Examples:

* 'abc' =>  ['ab', 'c_']
* 'abcdef' => ['ab', 'cd', 'ef']
'''

# My solution

def solution(str)
  result = []
  return result if str.empty?

  sub_result = ""
  str_arr = str.chars

  str_arr.each do |ch|
    if sub_result.length < 2
      sub_result += ch
    else
      result << sub_result
      sub_result = ch
    end
  end

  if str_arr.length.odd? 
    result << (sub_result + "_")
  else
    result << sub_result
  end

  result
end


# Better solution

def solution(str)
  (str + '_').scan /../
end

