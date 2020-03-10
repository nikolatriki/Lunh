require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @str = str
    end

    def valid?
      return false if @str.length <= 1

      stripped = @str.delete(' ')
      puts "stripped: #{stripped}"
      reversed_strip = stripped.reverse
      puts "reversed_strip: #{reversed_strip}"
      reversed_array = reversed_strip.chars #characters to array
      puts "reversed_array: #{reversed_array}"
      every_second_range = (1..reversed_array.length-1).step(2)
      every_second_array = every_second_range.map {|i| reversed_array[i]}
      puts "every_second_array: #{every_second_array}"

      true
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


  end
end
