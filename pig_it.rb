'''
DESCRIPTION:
Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

Examples
pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldway !
'''

#My solution
def pig_it(text)
  text.gsub(/\w+/) { |c| "#{c[1..-1]}#{c[0]}ay" }
end

#Better solution
def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end
