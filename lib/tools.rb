require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @stripped = str.delete(' ')
    end

    def valid?
      # Validations
      return false if @stripped.length <= 1
      return false if /\D/.match?(@stripped)

      # Calculation
      (rest_of_the_elements + checksum).sum % 10 == 0
    end

    private

    def checksum
      every_second_digit_from_right.map do |elem|
        double = elem * 2
        double > 9 ? double - 9 : double
      end
    end

    def every_second_digit_from_right
      indexes(1).map { |i| reversed_array[i].to_i }
    end

    def rest_of_the_elements
      indexes.map { |i| reversed_array[i].to_i }
    end

    def reversed_array
      @stripped.reverse.chars
    end

    def indexes(inx = 0)
      (inx..@stripped.length - 1).step(2)
    end
  end
end

  #   def reverse_valid?
  #     @str.reverse == false
  #   end

  #   # A method for testing if the number is Luhn valid
  #   def luhn_valid?
  #     luhn_checksum.zero?
  #   end

  #   # Computing if the sum has residual when divided by 10
  #   def luhn_checksum
  #     sum_up % 10
  #   end

  #   # Summing up all the digits
  #   def sum_up
  #     luhn_alg.inject(:+)
  #   end

  #   # The luhn algorithm
  #   def luhn_alg
  #     n = @str
  #     digits_of = digits_of(n)
  #     numbers = digits_of(n)
  #     numbers.reverse.map.with_index do |a, b|
  #       if b.odd?
  #         t = a * 2
  #         t > 9 ? digits_of(t).inject(:+) : t
  #       else
  #         a
  #       end
  #     end
  #   end

  #   def digits_of
  #     n = @str
  #     n.split(//).map(&:to_i)
  #   end
