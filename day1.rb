
# # day one 
# hello = "hello!"

# # puts hello
# def greeting (greet, name)
#   # puts greet + " " + name
#   puts "#{greet} #{name}"
#   puts "hello " + "David"
# end

# greeting("hello", "David")
#   # name = null
#   name = gets.strip
#   puts name
#   puts "_"

# name = gets.strip
# p name
# puts "_"
# # looping array
# cats = ["thomas", "stella", "Milo", "Sam"]
# cats.each do |cat, index|
#   puts "#{index + 1} #{cat}"
# end

# day 2************************************************************************************************************************************
name = "David"
puts name 

#method
number = 2

def add_two(num)
  return num + 2
end

puts add_two(2)

new_number = add_two(number)
puts number 
puts new_number

# scope 

fruit = "apple"

def is_fuit_good(fruit)
  case fruit
  when "apple"
    puts "yum"
  else
   puts "I dont know that fruit"
  end
end
# fuit is defined in the argument 
is_fuit_good(fruit)


#instance varibles 
@map = "google"

def is_fruit_bad
    case @map
when "apple"
  puts "yum"
else
 puts "best buy"
  end
end

is_fruit_bad
 
# Arrays 
#collection of data
#orders matter
# arr = []
# arr = Array.new()
# arr = ["Apple", "Orange", "Pear"]
# arr = [1,"a", Array.new, {}, (1 + 2), true]

arr = ["A", "B", "C", "D", "E"]
puts arr[0]
puts arr[1]
puts arr[2]
puts arr[3]
puts arr[4]

animals = ["frog", "cat", "dog"]

animals.each do |animal|
  print  animal + " ";
end

puts "end"


#more array stuff --------------------------------------------------------------------
cars = ["ford","supra","honda","Audi"]

puts "which car is your fav?"
cars.each_with_index do |car, i|
 puts "#{i + 1}. #{car}"
end

puts ">"
choice = gets.to_i
puts "your fav car is #{cars[choice -1]}"


#more array stuff--------------------------------------------------------------------
lets = ["A", "B", "C","D","E"]
#some tinkering adding taking out selecting etc
# arr.push("D")
# arr << "D"
# lets.shift(2)
# lets.insert(1, "Z")
#  lets.sort
puts lets.delete_at(2)
# puts lets

arg = [1,2,3,4,5,6,7,8,9,10,1000,-4]
puts arg.max

# numbers = [1,2,3,4,5,6,7,8]

# for n in numbers
#   puts n 
# end

# while x <= 3
#   puts x 
#   x += 1
# end

# hash = "key value pairs"

person = {
age: 22, 
first_name: "goku", 
last_name: "Smith",
eye_color: "red",
super_sayan: true,
alive: true,
hair_color: "yellow",
faverite_foods: ["tacos", "burgers", "wings"]
}

puts person [:first_name]
puts person [:faverite_foods]
person[:first_name] = "Gucci"
person[:funny?] = true
p person

# puts "#{person[:first_name]} #{person[:last_name]}'s Favorite Food:"
# person [:faverite_foods].each do |food|
#   puts food
# end


people =[
  {name: "billy", phone: "8013269561"},
  {name: "milli", phone: "8013269561"},
  {name: "rob", phone: "8013269561"},
  {name: "bob", phone: "8013269561"}
]

people.each do |person|
   puts person[:name]
end

# key Value of multiple hashes 
languages = {
  language: {
    ruby: {
      conceived: 1993,
      awesomeness: 9000
},
      Java:{
        conceived: 1991,
        awesomeness:4230958209348502349850
    }
  }
}

puts languages[:language][:ruby][:awesomeness] = 8000
puts languages[:language][:Java][:awesomeness]

#more hashes 
hero = {name: "Batman", wealth:"$100,000,000.00", suit_color:"black"}
hero[:car] = "LamboSHIT"
# puts hero.delete
puts hero

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Arrays and Hashes$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
array = Array.new() #[]
array = Array.new(5) #[nil, nil, nil, nil, nil]

arr = []
arr = ["green", "blue", "purple", "red"]
arr = [1, "a",Array.new, { },(1+2)]
# Arrays can contain any object because everything is an object
#Arrays are zero based
arr = ["A","B","C","D","E"]
puts arr[1]
 
# arr[0]=> "A"
# arr[1]=> "B"
# arr[2]=> "C"
# arr[3]=> "D"
# arr[4]=> "E"
# arr[5]=> "nil"
# arr[6]=> "nil"


# iterating Arrays (Non- Index)
["frog","bear","dog","cat"].each do |animal|
  puts animal
end
# iterating Arrays (with Index)
["Milo", "Sam", "Pepper"].each_with_index do |cat, index|
  puts "#{index} => #{cat}"
end
#Modifying Arrays
arr = ["A", "B","C"]
#Adding an item onto the end of an array
arr << "D"
print arr
# => ["A","B","C","D"]

#Adding an item at the beginning of an array
["b","c","d","e"].unshift("A")
# "A"
puts arr 

["A", "B", "C"].shift
puts arr

#Removing an item from the end of an array
arr.pop
# => "C"
puts arr


