# class Luhn
#   def initialize(str)
#     @str = str
#   end

#   def valid?
#     return false if @str.length <= 1

#     @str.reverse
#   end
# end

# nnn = Luhn.new('098')
# puts nnn.valid?

# print 'How old are you?'
# age = gets.chomp
# print 'How tall are you?'
# height = gets.chomp
# print 'How much do you weigh?'
# weight = gets.chomp
# print "So yoe are #{age}, you are #{height} tall and you weigh #{weight} lbs"

# name = gets
# p name
# name = gets
# if name == 'David'
#   puts "Hello David, we are expeting you!"
# end
# first, second, third = ARGV

# puts "Your first variable is #{first}"
# puts "Your second variable is #{second}"
# puts "Your third variable is #{third}"
puts "Let's practice everything"
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs'

# the <<END is heredoc.
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere thre is none.
END

puts '--------------------'
puts poem
puts '--------------------'

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1_000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10_000
beans, jars, crates = secret_formula(start_point)

puts "Wth a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates "

start_point /= 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)

