# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  newstring = ''
  string.downcase!
  string.length.times do |index|
    newstring += string[index + 1] if char_is_r(string, index) && next_char_not_nil(string, index)
  end
  newstring
end

def char_is_r(string, index)
  string[index] == 'r'
end

def next_char_not_nil(string, index)
  string[index + 1] != nil
end
