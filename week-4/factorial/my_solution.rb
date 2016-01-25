# Factorial

# I worked on this challenge [ with: Kenton Lin ].


# Your Solution Below
def factorial(integer)
  # Your code goes here
  if integer == 0
    return 1
  end
  final=1
  while integer > 0
    final = final * integer
    integer -=1
  end
  return final
end