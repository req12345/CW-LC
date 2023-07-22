#The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

#Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

#The following are examples of expected output values:

def rgb(r, g, b)
  convert(r) + convert(g) + convert(b)
end

def convert(color)
  return '00' if color <= 0
  return 'FF' if color >= 255

  color.to_s(16).rjust(2, '0').upcase
end

# OTHER
def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end

def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{ |e| e.clamp(0,255) }
end
