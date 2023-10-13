'''
You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

[]                                -->  "no one likes this"
["Peter"]                         -->  "Peter likes this"
["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
Note: For 4 or more names, the number in "and 2 others" simply increases.
'''

# My solution
def likes(names)
  likes = ' likes this'
  like = ' like this'

  case names.size
  when 0
    'no one' + likes
  when 1
    names[0] + likes
  when 2
    "#{names[0]} and #{names[1]}" + like
  when 3
  "#{names[0]}, #{names[1]} and #{names[2]}" + like
  else
   "#{names[0]}, #{names[1]} and #{names.size - 2} others" + like
  end
end

#Better solution
def likes(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "%s likes this" % names
  when 2
    "%s and %s like this" % names
  when 3
    "%s, %s and %s like this" % names
  else
    "%s, %s and %d others like this" %
      [names[0], names[1], names.length - 2]
  end
end
