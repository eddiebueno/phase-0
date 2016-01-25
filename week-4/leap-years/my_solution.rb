# Leap Years

# I worked on this challenge [with: John Pults ].


# Your Solution Below
def leap_year? (year)
  if year % 100 == 0
    unless year % 400 == 0
      return false
    end
  end
  
  year = 2000 - year
  
  if year % 4 == 0 
    return true
  
  else 
    return false
  end
end