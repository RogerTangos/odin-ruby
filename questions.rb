# What's the difference between an Integer and a Float?
"Intergers don't have decimal precision. Floats do."

# Why should you be careful when converting back and forth between integers and floats?
"You'll loose precision with each conversion"

# What's the difference between =, ==, and ===?
"= is the assign opperator
== is generic equality. It returns true only if an object and another object are the same object. It's often overridden at the class level.
=== is case equality. I don't really understand what it means."

# How do you do exponents in Ruby?
# What is a range?
"a set of values with a beginning and an end"

# How do you create a range?
(1..3)

# What's the difference between (1..3) and (1...3)?
(1..3).to_a => [1, 2, 3]
(1...3).to_a => [1, 2]

# What are three ways to create a range?
Range.new(a..b)
(a..b)
(a...b)

# Strings:
# What's the difference between single and double quotes?
"single quotes are not interpreted and are printed verbatim."

# What is string interpolation?
"expressions embedded into strings to be evaluated."

# What are escape characters?
"Special characters that will be read differently inside the string"

# What are line breaks?
"/n breaks the line"

# How do you make other things into strings?
1.to_s

# How do you concatenate strings?
"with string interpolation or the '+' symbol"

# How do you access a specific character or substring?
"using its string[index]"

# How do you split up strings into arrays?
"string".split('')

# How are strings and arrays similar?
"they are both really just arrays of numbers"

# How do you get and clean up user input on the command line?
gets.chomp

# What does it mean that strings are "mutable" and why care?
"strings can be changed later on. This means that you can assign them different strings, switch characters, etc"

# What is a symbol?
:foo
"there is only one :foo in the system, though there many be multiple 'foo' objects"

# How is a symbol different from a string?
"symbols are immutable strings"

# What is a Regular Expression (RegEx)?
a way to match strings

# How can you center or right-justify a string?
"string".center(19)
"string".rjust(19)

# Arrays:
# What are three ways to create an array?
arr = Array.new(3, nil)
arr = []
Array({:a => "a", :b => "b"}) # with the kernel

# How do you prepopulate the array with default data?
arr = Array.new(numOfObjext, default)

# How do you access items in an array?
arr[index]

# How can you access a specific group of items in an array?
arr[first..last]

# How do you modify the items in an array?
arr[index] = 'bar'

# How do you combine arrays?
arr.concat(otherArr)

# How do you find the values in one array that aren't in another?
arr1 - arr2

# How do you find values in both arrays?
arr1 & arr2

# What is the difference between push/pop and shift/unshift?
"push/pop act on the last element"
"pop removes the last element and returns"
"push adds a new last elements and returns them"

"shift/unshift act on the first element "
"shift removes the first element and returns"
"unshift adds new first elements and returns them"

# What is the shovel operator?
<<
"it modifies the existing object"
+= "is slower as it creates a new object"

# How is > arr.pop different from > arr[-1]?
"pop modifies the array while [-1] doesn't. They both return the last value"

# How is pushing or <<ing another array into your array different from just adding them together?
"<< actually concatinates the new array. adding returns a new array, but doesn't overwrite the original" 

# How do you delete items in an array?
arr.delete_at(index)
arr.delete(theActualItem)

# Why should you be careful deleting items in an array?
"because it changes the index of other items in the array"

# How can you convert arrays to strings?
arr.to_s

# How can you convert from other data types to arrays?
"by calling the kernel's" Array() "method, which uses to_ary and to_a"

# How can you figure out if an array contains a particular value?
arr.include?("value")

# How do you find the biggest item in an array?
arr.max

# How do you find the smallest item in an array?
arr.min

# How do you remove any duplicates from your array?
arr.uniq!

# How to you find out how big an array is?
arr.length

# How do you put an array in order?
arr.sort!

# What are the naming conventions for arrays?
"same as variables. start with lowercase. underscores only"

# What should you store in arrays?
"any object you'd like"


# Hashes:
# What is a hash?
"a dictionary."

# What are keys and values?
"key is points to the memory location. Value is what's there"

# How is a hash similar to an Array?
"it's still a collection of objects"

# How is a hash different from an Array?
"keys. No ordering. O(1) access"

# What are 3 ways to create a hash?
"implicit:" hash = {"foo" => "bar"}
hash = {:foo => "bar"}
"class method:" hash = Hash.new

# What is the hash rocket?
=>

# How do you access data in a hash?
hash['key'] => value

# How do you change data in a hash?
hash['key'] = newValue

# What types of data are good to store in a hash?
unsorted data that needs to be accessed quickly.

# What are options hashes?
"they are ways of passing multiple options or parameters to a method"
some_object.some_method arg1, arg2, :param1 => value1, :param2 => value2

# How do you delete data from a hash?
hash[key] = nil
"or"
hash.delete(key)

# How do you add hashes together?
hash1.merge(hash2)

# How do you list out all the keys or values?
hash.keys
hash.values

# How do you see if the hash contains a key or value?
hash.has_key?(key)
hash.has_value?(val)

# What is a set?
"a hash where all values are either true or false"

# Dates and Times:
# How do you get the current date and time?
time = Time.now

# How do you find just the Year? Month? Hour? Second? Weekday?
time = Time.now
time.year
time.month
time.hour
time.sec
time.day

# How do you create a Time specifically for 12/25/2013?
time = Time.new(2013, 12, 25)

# How do you find how many days have passed between two Time's?
((time1 - time2)/60/60/24).to_i
"we're converting from seconds to minutes to days"

# What's the difference between UTC and GMT and Local times?
"UTC is the universal time"
"GMT is based on english time"

# How would you find out the time that was 100 seconds ago? 10 days ago?
"100 seconds ago:" Time.now-100
"10 days ago:" Time.now - (10*24*60*60)

# Other Random Stuff:
# What is nil?
"null"
# How do you check if something is nil?
.nil?

# What's the difference between nil and blank and empty?
"nil value is just a placeholder. Blank and empty values are still objects."

# Are the following nil or empty?
# " ", "", [], [""], {}
"all empty, not nil"

# What's the difference between puts and p and print?
"p runs the inspect method"
"puts runs the to_s method and adds a newline"
"print runs to_s and doesn't add a new line"

# What does inspect do?
"inspect lets you see the innards of an object printed on the screen"

# What do +=, -=, *= and /= do?
+= "calls the + method of the first object and reassigns the memory location to the result"
-= "is the same thing, but with the - method"
a *= b "is the same as" a = a * b
a /= b "is the same as" a = a/b

# What is parallel assignment?
"when you assign the values of more than one variable at a time"
a, b = "foo", "bar"

# What's the easiest way to swap two variables?
a, b = b, a
