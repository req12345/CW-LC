'''
DESCRIPTION:
Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]
'''

def moveZeros(arr)
    new_arr = []
    zeros_count = 0

    arr.each do |i|
        if i.zero?
            zeros_count += 1
            next
        else
            new_arr << i
        end
    end

    new_arr.fill(0, new_arr.size, zeros_count)
end

#OTHER

def moveZeros(arr) 
  zeros = arr.count(0)
  arr.delete(0)
  arr.fill(0, arr.size, zeros)
end
