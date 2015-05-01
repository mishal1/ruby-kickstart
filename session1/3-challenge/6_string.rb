# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  newstring = ''
  number = string.length
  number.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    newstring += string[index]
  end
  newstring
end