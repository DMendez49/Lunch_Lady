#we have access to pry commands
# example
require "pry"
# @contacts = ["spancer", "Thomas"]
#binding.pry used to check code 
#on were you think there is a problem

#this is how to create a class
class Person
  attr_accessor :name, :age
  #initialize method is being called first 
  def initialize(name, age)
    #two instance variables inside method of class
   @name = name
   @age = age
  end
  #new method inside of the Person class
  def increase_age(number)
    #@age = @age + number   // does the same as line 20 
    @age += number
  end
end

#calling a class / jack is the instance of the class
jack = Person.new("jack", 27)
jack.increase_age(5) # using the increased age varible to the instance variable
# new instance
David = Person.new("david", 24)
# new instance
Amber = Person.new("amber", 22)



#new class
class Dog
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end


  #instance method$$$$$$$$$$$$$$$$$$$$$$$
  def info
    puts "#{@name} is of breed #{@breed}"
  end


  #Class Method$$$$$$$$$$$$$$$$$$$$$$$$$
  def self.bark
    puts "WOOF!"
  end

end

walter_the_dog = Dog.new("Walter", "German sheperd")
walter_the_dog.info
Dog.bark




class Parent
  def use_parent_method
      puts "this was called from the parent"
  end

  def overide
    puts "this was called from the parent"
  end

  def alterable
    puts "this was also called from the parent"
  end

end


#child is inhareting the use_parent method 
class Child < Parent
  def overide
    puts "theis was called from the child"
  end
  def alterable
    super()# calls the method of the opposite class
    puts "I am the child bitch"
    puts "here are some more details"
  end
end

p = Parent.new
c = Child.new

#plug in the methods
p.alterable
c.alterable


#new example 
class Mammal 
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @name = age
  end

  def breath 
    puts "inhale and exhale"
  end
  
  def speak
    raise "You must ovverride this method in the sub class"
  end
end
 

  class Cat < Mammal
    def initialize(name, age)
        super(name, age)
        @name = name
        @age = age 
    end

    def speak
      puts "Meow"
    end

end 

Fishy = Mammal.new("Fishy", 40)
Gato = Cat.new("cat", 50)
Fishy.breath
Gato.speak


#new Example

class App
  def initialize
    # App starts here
    @person = init_person
    puts "welcome #{@person.name}"
    #Continue the app 
  end

  #Private - cant call methods outside of the class 
  private
  def init_person
    puts "Enter your name:"
    puts ">"
    name = gets.strip
    puts "what is your age?"
    puts ">"
    age = gets.to_i
    Person.new(name, age)
  end

end 

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

a = App.new

# a.init_person

#classes you can creat instences of the class and you cant with modules 

#Module 






# module Math
#   def add(num1, num2)
#     num1 + num2
#   end

#   def subtract(num1, num2)
#     num1 - num2
#   end
# end


# class MathAssignment 
#   include Math
#   def first_solution
#     add(10,50) + subtract(3,10)
#   end
# end

# assignment = MathAssignment.new
# puts assingment.first_solution
