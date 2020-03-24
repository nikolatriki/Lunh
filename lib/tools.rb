require "tools/version"

module Tools
  class Luhn
    def initialize(str)
      @stripped = str.delete(' ')
    end

    def valid?
      return false if @stripped.length <= 1

      # making an array
      
      true
    end
  end
end
