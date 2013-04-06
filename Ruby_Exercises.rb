#Task 1: Use the "each" method of Array to iterate over [1,..,10], and print out each value.
a = (1..10).to_a
a.each {|i| puts i}

#Task 2: Same as above, but only print out values grater than 5.
a.each do |i|
	if i>5
		puts i
	end
end

#Task 3: Now, using the same array from Task 2, use teh "select" method to extract all odd numbers into a new array
evens = a.select {|x| x%2 == 0}
puts evens.inspect

#Task 4:  Append 11 to the end of the array. Prepend 0 to the beginning
a<<11
puts a.inspect
b=[0]
a = b + a
puts a.inspect

#Task 5: Get rid of 11 and append 3.
a.pop
a<<3
puts a.inspect

# Task 6: Get rid of dublicates without specifically removing any one value
a |=a 
puts a.inspect
#Or you can use the uniq! method, it is probably better to do it this way
#because the code is easier to read.
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
puts a.inspect
a.uniq!
puts a.inspect

#Task 7: What is the major difference between an Array an a Hash.
#In an Array the keys are numbers beginning at zero.
#In a Hash you can chose the keys yourself, usally symbols are used.

#Task 8: Create a Hash using both 1.8 and 1.9 syntax.
#Ruby 1.9+1.8:
student1 = {:firstname => "Peter", :lastname => "Maier", :age => 23}
puts student1.inspect
#In Ruby 1.8 you could use a comma instead of =>.
#Just in Ruab 1.9 there exists a nive shortcut if the keys are symbols.
#In case the keys are symbols you don't need an arrow.
student2 = {firstname: "Scott", lastname: "Moore", age: 24}
puts student2.inspect

#Task 9: Get the value for key "b".
b = {a: 1, b: 2, c: 3}
puts b[:b]

#Task 10: Add to this hash teh key:value pair {e: 5}
b[:e]=5
puts b.inspect

#Task 11: Remove all key:value pairs whose value is less the 3.5.
b.delete_if {|key, value| value < 3.5 }
puts b.inspect

#Task 12: Can hash values be arrays? Can you have an array of hashes?
#Yes, hash values can be arrays, example:
b[:f]=a
puts b.inspect
#Yes, you can have an array of hashes, example:
myArray = [student1, student2]
puts myArray.inspect

#Task 13: Look at several Rails/Ruby online API sources and say which
#one you like best and why
#I use http://www.ruby-doc.org
#I don't know different APIs. I like it because it is easy to follow.

#All tasks completed!