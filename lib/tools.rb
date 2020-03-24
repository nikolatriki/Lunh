require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @stripped = str.delete(' ')
    end

    def valid?
      return false if @stripped.length <= 1

      # reversing string
      @stripped.reverse
      puts "stripped reverse: #{@stripped.reverse}"
      # reversed string to array to INTEGER
      rev_arr = @stripped.reverse.chars
      puts "reversed string to array: #{rev_arr}"
      # taking every second element of string
      every_second = (1..rev_arr.length-1).step(2)
      puts "every second element displayed: #{every_second.to_a}"
      every_second_array = every_second.map {|i| rev_arr.to_i}
      puts "every second array: #{every_second_array}"

      true
    end
  end
end
