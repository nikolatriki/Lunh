require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @stripped = str.delete(' ')
    end

    def valid?
      return false if @stripped.length <= 1
      return false if /\D/.match?(@stripped)

      # reversing string
      @stripped.reverse
      puts "stripped reverse: #{@stripped.reverse}"
      # reversed string to array to INTEGER
      rev_arr = @stripped.reverse.chars
      puts "reversed string to array: #{rev_arr}"
      # taking every second element of string
      every_second = (1..rev_arr.length-1).step(2)
      # puts "every second element displayed: #{every_second.to_a}"
      every_second_array = every_second.map {|i| rev_arr[i].to_i}
      puts "every second array: #{every_second_array}"
      doubling = every_second_array.map do |i|
        double = i * 2
        double > 9 ? double - 9 : double
      end
      puts "doubling: #{doubling}"
      every_first = (0..rev_arr.length-1).step(2)
      every_first_array = every_first.map {|i| rev_arr[i].to_i}
      puts "every first array: #{every_first_array}"
      sum = (doubling + every_first_array).sum
      puts "sum: #{sum}"
      (sum % 10).zero?
    end
  end
end
