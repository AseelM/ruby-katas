# kata to decide whether a number is prime or not.

puts "enter number to investigate"
number = gets.chomp.to_i
if number == 1
  puts "1 is a special case and it has a classification of its own 'unit'"
elsif (2..(number-1)).to_a.any? {|x| number % x == 0} || number == 0
  puts "#{number} isn't a prime number!"
else
  puts "#{number} is a prime number!"
end

# any? method passes each element of the collection to the given block. The method returns true if the block ever returns a value other than false or nil. If the block is not given, Ruby adds an implicit block of {|obj| obj} (that is any? will return true if at least one of the collection members is not false or nil.
