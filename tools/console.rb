require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new('Wills cult', 'SF', 2020, 'You got this!')
c2 = Cult.new('Niners cult', 'SF', 1999, 'Quest for six!')

f1 = Follower.new('Will', 32, 'No Worries')
f2 = Follower.new('Jewels', 31, 'No,No,No')
f3 = Follower.new('Jerm', 2, 'Miiiinnnneee')

bo1 = BloodOath.new(c1, f1, "2020-08-24")
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits