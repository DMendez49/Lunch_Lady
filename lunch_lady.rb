# Basic Objectives:

# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total

# Bonus Objectives:

# the user can choose as many "add-on" items as they want before getting total
# the user can clear their choices and start over
# the user has a wallet total they start with and their choices cannot exceed what they can pay for
# the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
# main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
# descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
# display to the user not only their total but the total fat content/calories / carbs / etc...

require "pry"
require "colorize"

# this is the lunch class
class Lunch 

  def initialize
    @customer = consumer
    puts "Welcome to Lunch Time #{@customer.name}! would you like to have today's special yes or no (Y/N)".red.on_black.bold
    userChoice = gets.strip

  case userChoice
  when "Yes"
    puts "Awsome #{@customer.name}! Would you like anything else?".bold.colorize(:yellow)
    menu
  when "yes"
    puts "Awsome #{@customer.name}! Would you like anything else?".bold.colorize(:yellow)
    menu    
  when "y"
    puts "Awsome #{@customer.name}! Would you like anything else?".bold.colorize(:yellow)
    menu    
  when "no"
    puts "What can I start you with today #{@customer.name}?".bold.colorize(:yellow)
    menu
  when "NO"
    puts "What can I start you with today #{@customer.name}?".bold.colorize(:yellow)
    menu
  when "No"
    puts "What can I start you with today #{@customer.name}?".bold.colorize(:yellow)
    menu
  else
    menu
  end
end

def consumer
  puts "\n--------------------  Lunch Time !  --------------------".bold.colorize(:red)
  puts "Enter your name:".bold.colorize(:black)
  puts ">".bold
  name = gets.strip
  puts "what is your age?".bold.colorize(:black)
  puts">".bold
  age = gets.to_i
  Customer.new(name, age)
end

# this is the customer class
class Customer 
  attr_accessor :food, :price
  attr_accessor :name, :age

  def initializer(food, age)
    @name = name
    @age = age
  end  

  def initialize(name, age)
    @name = name
    @age = age
  end
end

# these are the static methods
#when1
def creat_dish
  puts "\n--------------------   Main!  --------------------".bold.colorize(:green)
  puts "Burrito Grande".bold.colorize(:yellow)
  puts "Pizza Grande".bold.colorize(:yellow)
  puts "Taco Grande".bold.colorize(:yellow)
  puts "Steak Grande".bold.colorize(:yellow)
  puts "Ariana Grande".bold.colorize(:yellow)
  puts "Worms & Waffles".bold.colorize(:yellow)
  puts "snails & Yogert".bold.colorize(:yellow)

  @dish_list = [{
    #Special
    main: 'Steak',
    side: 'Mushrooms',
    drink: 'Carona'
    },
    {
      main: 'Wings',
      side: 'French_Frys',
      drink: 'Carona'
  }]
  
  # @cost_list =[{
  #   main: "$10.00",
  #   side: "$3.00",
  #   drink: "$2.00"
  #   special: "$12.00"
  # }]

  puts "Enter a Main dish"
  main = gets.to_s
  puts "\n--------------------   SIDE!  --------------------".bold.colorize(:green)
  puts "Burrito ".bold.colorize(:yellow)
  puts "Pizza ".bold.colorize(:yellow)
  puts "Taco ".bold.colorize(:yellow)
  puts "Steak ".bold.colorize(:yellow)
  puts "Ariana ".bold.colorize(:yellow)
  puts "Worms ".bold.colorize(:yellow)
  puts "snails ".bold.colorize(:yellow)
  puts "Enter a Side dish"
  side = gets.to_s
  puts "\n--------------------   Drinks!  --------------------".bold.colorize(:green)
  puts "Beer ".bold.colorize(:yellow)
  puts "Juice ".bold.colorize(:yellow)
  puts "Milk ".bold.colorize(:yellow)
  puts "Liquer ".bold.colorize(:yellow)
  puts "Ariana ".bold.colorize(:yellow)
  puts "Water ".bold.colorize(:yellow)
  puts "Secret ".bold.colorize(:yellow)
  puts "Enter a Drink"
  drink = gets.to_s
  @dish_list << {:main => main, :side => side, :drink => drink}
end

def view_tray
  # binding.pry
  @dish_list.each_with_index do |dish, i|
    puts " #{i + 1}
    main: #{dish[:main]} \n
    side: #{dish[:side]} \n
    drink: #{dish[:drink]} 
    "
    end
  menu
end

def loop_dishes
  @dish_list.each_with_index do |dish, i|
    puts " #{i + 1}
    main: #{dish[:main]} \n
    side: #{dish[:side]} \n
    drink: #{dish[:drink]} 
    "
  end
end

def delete_tray
  loop_dishes
  puts "Select the number you want to delete"
 choice = gets.to_i - 1
 @dish_list.delete_at(choice)
 menu
end

def edit_tray 
  loop_dishes
  @dish = gets.to_i - 1
  puts "would you like to edit the Main dish the side or the drink?"
 decesion = gets.strip

 case decesion
 when "main"
      edit_main
 when "Main"
      edit_main
 when "main dish"
      edit_main
 when "Main dish"
      edit_main
 when "side"
      edit_side
 when "Side"
      edit_side
 when "side Dish"
      edit_side
 when "Side dish"
      edit_side
 when "drink"
      edit_drink
 when "Drink"
      edit_drink
 else
      creat_dish
 end
end

def edit_main
  puts "--------------------   Main!  --------------------".bold.colorize(:green)
  puts "Burrito Grande".bold.colorize(:yellow)
  puts "Pizza Grande".bold.colorize(:yellow)
  puts "Taco Grande".bold.colorize(:yellow)
  puts "Steak Grande".bold.colorize(:yellow)
  puts "Ariana Grande".bold.colorize(:yellow)
  puts "Worms & Waffles".bold.colorize(:yellow)
  puts "snails & Yogert".bold.colorize(:yellow)

  edited_main = gets.strip
  puts "Edited Main: #{edited_main}"
  @dish_list[@dish][:main] = edited_main
  menu
end

def edit_side
  puts "\n--------------------   SIDE!  --------------------".bold.colorize(:green)
  puts "Burrito ".bold.colorize(:yellow)
  puts "Pizza ".bold.colorize(:yellow)
  puts "Taco ".bold.colorize(:yellow)
  puts "Steak ".bold.colorize(:yellow)
  puts "Ariana ".bold.colorize(:yellow)
  puts "Worms ".bold.colorize(:yellow)
  puts "snails ".bold.colorize(:yellow)
  puts "Enter a Side dish"
  
  edited_side = gets.strip
  puts "Edited Side: #{:edited_side}"
  @dish_list[@dish][:side] = edit_side
  menu
end

def edit_drink
  puts "\n--------------------   Drinks!  --------------------".bold.colorize(:green)
  puts "Beer ".bold.colorize(:yellow)
  puts "Juice ".bold.colorize(:yellow)
  puts "Milk ".bold.colorize(:yellow)
  puts "Liquer ".bold.colorize(:yellow)
  puts "Ariana ".bold.colorize(:yellow)
  puts "Water ".bold.colorize(:yellow)
  puts "Secret ".bold.colorize(:yellow)
  puts "Enter a Drink"

  edited_drink = gets.strip
  puts "Edited Drink: #{:edited_drink}"
  @dish_list[@dish][:drink]= edit_drink
menu
end

def math
end 

  def menu
    puts "\n--------------------  Lunch Time !  --------------------".bold.colorize(:red)
    puts " 1) Creat dish".bold.colorize(:yellow)
    puts " 2) View tray".bold.colorize(:yellow)
    puts " 3) Delete item".bold.colorize(:yellow)
    puts " 4) Edit dish".bold.colorize(:yellow)
    puts " 5) Exit\n".bold.colorize(:yellow)

    choice = gets.strip
    case choice
      when "1"
        puts "Creating dish ...".bold.colorize(:yellow)
        creat_dish

      when "2"
       puts "Veiwing your tray...".bold.colorize(:yellow)
       view_tray

      when "3"
        puts "Deleting item...".bold.colorize(:yellow)
        delete_tray

      when "4"
        puts "Editing Item...".bold.colorize(:yellow)
        edit_tray

      when "5"
        exit
      end
  end
end


Lunch.new.menu
