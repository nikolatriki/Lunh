require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @stripped = str.delete(' ')
    end

    def valid?
      return false if @stripped.length <= 1

      # reversing string input
      @stripped.reverse
      

      true
    end
  end
end
