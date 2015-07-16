class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    return str.gsub(/\w{5,}/) { |w| w[0].downcase! ? 'Marklar' : 'marklar' }
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
    $i = 1
    out = 0
    while $i <= nth
      out += f[$i] if f[$i].even?
      $i += 1
    end
    return out
  end
end