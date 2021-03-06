# Same Char Collapse
# Write a method same_char_collapse that takes in a string and returns a collapsed version of the string. 
# To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no such adjacent characters. 
# If there are multiple pairs that can be collapsed, delete the leftmost pair.
# For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(str)
  collapsable = true
  
  while collapsable
    collapsable = false
    
    chars = str.split("")
    chars.each.with_index do |_char, i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        collapsable = true
        break
      end
    end
    
    str = chars.join("")
  end
  
  return str
end

p same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


p same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv