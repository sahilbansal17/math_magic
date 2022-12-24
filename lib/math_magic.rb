# frozen_string_literal: true

# Description: A class that contains methods for performing mathematical
# operations.
class MathMagic
  def self.gcd(num1, num2)
    if num2.zero?
      num1
    else
      gcd(num2, num1 % num2)
    end
  end

  def self.prime?(num)
    if num < 2
      false
    else
      temp = 2
      while (temp * temp) <= num
        return false if (num % temp).zero?

        temp += 1
      end
      true
    end
  end

  def self.factors(num)
    factors = []
    temp = 2
    while (temp * temp) <= num
      if (num % temp).zero?
        factors << temp
        factors << num / temp
      end
      temp += 1
    end

    factors.sort
  end
end
