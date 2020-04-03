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

  # ALLERGIES ExERCISE

  class Allergies
    ALLERGENS = {
      1 => 'eggs',
      2 => 'peanuts',
      4 => 'shellfish',
      8 => 'strawberries',
      16 => 'tomatoes',
      32 => 'chocolate',
      64 => 'pollen',
      128 => 'cats'
    }
    def initialize(score)
      @score = score
      @score -= 256 while @score >= 256
    end

    def allergic_to?(allergen)
      score_allergens.include?(allergen)
    end

    def score_allergens
      allergen_keys.map { |key| ALLERGENS[key] }
    end

    private

    def keys_all
      ALLERGENS.keys.select { |key| key <= @score }.sort.reverse
    end

    def allergen_keys
      tmp = @score
      keys_all.select { |elem| tmp >= elem && tmp -= elem }
    end
  end

  # RESISTORS

  class Resistors
    COLORS = {
      black: { color: 0, multiplier: 1, tolerance: 20 },
      brown: { color: 1, multiplier: 10, tolerance: 1 },
      red: { color: 2, multiplier: 10**2, tolerance: 2 },
      orange: { color: 3, multiplier: 10**3, tolerance: 0.05 },
      yellow: { color: 4, multiplier: 10**4, tolerance: 0.02 },
      green: { color: 5, multiplier: 10**5, tolerance: 0.5 },
      blue: { color: 6, multiplier: 10**6, tolerance: 0.25 },
      violet: { color: 7, multiplier: 10**7, tolerance: 0.1 },
      grey: { color: 8, multiplier: 10**8, tolerance: 0.05 },
      white: { color: 9, multiplier: 10**9, tolerance: 10 },
      gold: { multiplier: 10**-1, tolerance: 5 },
      silver: { multiplier: 10**-2, tolerance: 10}
    }

    attr_reader :color1, :color2

    def initialize(colors)
      @color1, @color2, @multiplier, @tolerance = colors
    end

    def base
      color(color1) * 10 + color(color2)
    end

    def specification
      " #{base * multiplier}" + " ohms +-#{tolerance}%"
    end

    private

    def multiplier
      COLORS[@multiplier.downcase.to_sym][:multiplier]
    end

    def tolerance
      @tolerance.nil? ? 20 : COLORS[@tolerance.downcase.to_sym][:tolerance]
    end

    def color(color_key)
      COLORS[color_key.downcase.to_sym][:color]
    end
  end

  class ArmstrongNumber
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def valid?
      number.digits.map { |elem| elem**number.digits.size }.sum == number
    end
  end
end
