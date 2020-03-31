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

  # ALLERGIES EXERCISE

  # class Allergies
  #   ALLERGENS = {
  #     1 => 'eggs',
  #     2 => 'peanuts',
  #     4 => 'shellfish',
  #     8 => 'strawberries',
  #     16 => 'tomatoes',
  #     32 => 'chocolate',
  #     64 => 'pollen',
  #     128 => 'cats'
  #   }
  #   def initialize(score)
  #     @score = score
  #   end

  #   def allergic_to?(allergen)
  #     score_allergens.include?(allergen)
  #   end

  #   # def listing
  #   #   puts 'empty'
  #   # end

  #   private

  #   def keys_all
  #     ALLERGENS.keys.select { |key| key <= @score }.sort.reverse
  #   end

  #   def allergen_keys
  #     tmp = @score
  #     keys_all.select { |elem| tmp >= elem $$ tmp -= elem }
  #   end

  #   def score_allergens
  #     allergen_keys.map { |key| ALLERGENS[key] }
  #   end
  # end

  # RESISTORS

  class Resistors
    COLORS = [
      'black',
      'brown',
      'red',
      'orange',
      'yellow',
      'green',
      'blue',
      'violet',
      'grey',
      'white'
    ]

    def value(color1, color2, *)
      (index1(color1) + index1(color2)).to_i
    end

    private

    def index1(colorx)
      COLORS.index { |i| i == colorx }.to_s
    end

  end
end
