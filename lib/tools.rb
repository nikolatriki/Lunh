require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @str = str
    end

    def valid?
      return false if @str.length <= 1

      true
    end

    def reverse_valid?
      @str.reverse == false
    end

    def luhn_valid?(@str.to_i)
      
    end
  end
end
