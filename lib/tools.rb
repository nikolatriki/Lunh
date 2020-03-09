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

    def invalid?
      @str.reverse == false
    end

    def luhn
    end
  end
end
