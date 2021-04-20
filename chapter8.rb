# class LoveInterest
#
#   def request_date
#     if @busy
#       puts "Sorry, I'm busy."
#     else
#       puts "Sure, let's go!"
#       @busy = true
#     end
#   end
# end
#
# betty = LoveInterest.new
# candace = LoveInterest.new
#
# betty.request_date
# candace.request_date
# betty.request_date
#
# p betty.object_id
# p candace.object_id

#####################################################################################

# class Counter
#
#   def initialize
#     @count = 0
#   end
#
#   def increment
#     @count += 1
#     puts @count
#   end
# end
#
# a = Counter.new
# b = Counter.new
# c = b
# d = c
#
# a.increment
# b.increment
# c.increment
# d.increment

#####################################################################################

# class CelestialBody
#   attr_accessor :type, :name
# end
#
# altair = CelestialBody.new
# altair.name = 'Altair'
# altair.type = 'star'
#
# polaris = CelestialBody.new
# polaris.name = 'Polaris'
# polaris.type = 'star'
#
# vega = CelestialBody.new
# vega.name = 'Vega'
# vega.type = 'star'
#
# puts altair.name, polaris.name, vega.name
#
# puts altair.object_id
# puts polaris.object_id
# puts vega.object_id

#####################################################################################

# class CelestialBody
#   attr_accessor :type, :name
# end
# default_body = CelestialBody.new
# default_body.type = 'planet'
# bodies = Hash.new(default_body)
#
# bodies['Mars'].name = 'Mars'
# p bodies['Mars']
#
# bodies['Europa'].name = 'Europa'
# bodies['Europa'].type = 'moon'
# p bodies['Europa']
#
# bodies['Venus'].name = 'Venus'
# p bodies['Venus']
#
# p bodies['Europa']
# p bodies['Mars']

#####################################################################################

# class CelestialBody
#   attr_accessor :type, :name
# end
# bodies = Hash.new do |hash, key|
#   body = CelestialBody.new
#   body.type = 'planet'
#   hash[key] = body
#   body
# end
#
# bodies['Mars'].name = 'Mars'
# p bodies['Mars']
#
# bodies['Europa'].name = 'Europa'
# bodies['Europa'].type = 'moon'
# p bodies['Europa']
#
# bodies['Venus'].name = 'Venus'
# p bodies['Venus']
#
# p bodies['Europa']
# p bodies['Mars']
#
# p bodies['Europa']
# bodies['Europa'].type = 'net_the_moon'
# p bodies['Europa']

#####################################################################################

# foods = Hash.new([])
# foods['A'] << "Apple"
# foods['A'] << "Avocado"
# foods['B'] << "Bacon"
# foods['B'] << "Bread"
# p foods['A']
# p foods['B']
# p foods
#
#
# foods = Hash.new { |hash, key| [] }
# foods['A'] << "Apple"
# foods['A'] << "Avocado"
# foods['B'] << "Bacon"
# foods['B'] << "Bread"
# p foods['A']
# p foods['B']
# p foods
#
# foods = Hash.new { |hash, key| hash[key] = [] }
# foods['A'] << "Apple"
# foods['A'] << "Avocado"
# foods['B'] << "Bacon"
# foods['B'] << "Bread"
# p foods['A']
# p foods['B']
# p foods

######################################################################

# class CelestialBody
#   attr_accessor :type, :name
# end
#
# bodies = Hash.new do |hash, key|
#   body = CelestialBody.new
#   body.type = 'planet'
#   hash[key] = body
# end
#
# bodies['Mars'].name = 'Mars'
# bodies['Europa'].name = 'Europa'
# bodies['Europa'].type = 'moon'
# bodies['Venus'].name = 'Venus'
#
# p bodies

#######  Good for numbers if you are not going to redefine them #######

# letters = ['a', 'c', 'a', 'b', 'c', 'a']
#
# counts = Hash.new(0)
#
# letters.each do |letter|
#   counts[letter] += 1
# end
#
# p counts

#######################################################################

hash = Hash.new(0)
hash['a'] += 1
hash['c'] += 1
p hash.default
p hash