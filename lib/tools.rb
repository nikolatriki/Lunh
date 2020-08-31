require "tools/version"

# LUHN NUMBER >>
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

  # ALLERGIES ExERCISE >>
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

  # RESISTORS >>
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

  # ARMSTRONG NUMBER >>
  class ArmstrongNumber
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def valid?
      number.digits.map { |elem| elem**number.digits.size }.sum == number
    end
  end

  # ANTIPODES >>
  class Antipodes
    attr_reader :array
    def initialize(array)
      @array = array
    end

    def antipode_out
      if array.count <= 1
        array
      else
        summed.map { |elem| elem / 2.0 }
      end
    end

    private

    def first_array
      array.first(array.length / 2)
    end

    def second_array
      array.last(array.length / 2)
    end

    def transposed
      [first_array, second_array.reverse].transpose
    end

    def summed
      transposed.map(&:sum) # { |num| num.sum }
    end
  end

  # CHOCOLATE DILEMMA >>
  class Chocolate
    attr_reader :subarray1, :subarray2

    def initialize(subarray1, subarray2)
      @subarray1 = subarray1
      @subarray2 = subarray2
    end

    def fairness?
      iteration(subarray1) == iteration(subarray2)
    end

    private

    def iteration(array)
      array.map { |elem| elem.inject(:*) }.sum
    end
  end

  # ODD NUMBER >>
  class OddNumber
    def initialize(array)
      @array = array
    end

    def first_odd
      all_odd.first
    end

    def all_odd
      @array.group_by(&:itself).select{|_k,v| v.count % 2 != 0 }.values.flatten.uniq
    end
  end

  # ADJUST THE TIME >>
  # class AdjustTheTime
  #   def initialize(timestamp_str)
  #     @timestamp_str = timestamp_str
  #   end

  #   def strf()
  #   end
  # end

    # POKEMON DAMAGE >>
    # class Pokemon
    #   def initialize()
    #   end

    #   def calculate_damage( first_type, second_type, attack_power, defence_power)
    #     @first_type = first_type
    #     @second_type = second_type
    #     50 * (attack_power / defence_power) * effectiveness
    #   end

    #   def effectiveness()
    #   end
    # end





end

