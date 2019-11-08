# Basic Objectives:

# User inputs question
# Computer outputs random answer
# User inputs "QUIT"
# Computer outputs a goodbye message and exits
# Ability to add more answers:
# Via easter egg question ("add_answers")
# Do not let them add the same answer if the eight ball already has that answer
# Ability to reset answers back to the original bank (hint: think arr.clone)
# Via easter egg question ("reset_answers")
# Ability to have eight ball print all answers
# Via easter egg question ("print_answers")
 

# Bonus Objectives:

# Create a menu to handle all the functionality.
# Use classes to handle the Eight Ball Program and Answers.
# Use the colorize gem (from lecture) to add some color to your application.

require "pry"
require "colorize"

class EightBall
  def initialize
    #App starts here
    @player = game_player
    puts "Welcome #{@player.name} know ask the Magic 8-ball a question! (q to quit)".cyan.on_magenta.bold
    userChoice = gets.strip

    def random_answer
      @answers = [
      "no chance at all".bold.colorize(:yellow),
      "I would assume so".bold.colorize(:yellow),
      "It is certain".bold.colorize(:yellow),
      "It is decidedly so".bold.colorize(:yellow),
      "Without a doubt".bold.colorize(:yellow),
      "No doubt about it".bold.colorize(:yellow),
      "Yes definitely".bold.colorize(:yellow),
      "You may rely on it".bold.colorize(:yellow),
      "As I see it, yes".bold.colorize(:yellow),
      "As I see it, No".bold.colorize(:yellow),
      "Dont make me laugh".bold.colorize(:yellow),
      "less likely".bold.colorize(:yellow),
      "Most likely".bold.colorize(:yellow),
      "Outlook is good".bold.colorize(:yellow),
      "Signs point to yes".bold.colorize(:yellow),
      "Reply hazy try again".bold.colorize(:yellow),
      "Ask again later".bold.colorize(:yellow),
      "Better not tell you now".bold.colorize(:yellow),
      "Cannot predict now".bold.colorize(:yellow),
      "Concentrate and ask again".bold.colorize(:yellow),
      "Don't count on it".bold.colorize(:yellow),
      "My reply is no".bold.colorize(:yellow),
      "My sources say no".bold.colorize(:yellow),
      "Outlook not so good".bold.colorize(:yellow),
      "Very doubtful".bold.colorize(:yellow),
      "It is very likely".bold.colorize(:yellow),
      "the chances are slim".bold.colorize(:yellow),
      "Are you kidding".bold.colorize(:yellow)
      ]
     puts @answers[Random.rand(@answers.size)]
     userChoicey
    end

     case userChoice
    when "q"
      puts "YOU ARE A WIMP! #{@player.name}! exited Magic 8-ball".bold.colorize(:red)
      exit
    when"quit"
      puts "YOU ARE A WIMP! #{@player.name}! exited Magic 8-ball".bold.colorize(:red)
      exit
    when"Quit"
      puts "YOU ARE A WIMP! #{@player.name}! exited Magic 8-ball".bold.colorize(:red)
      exit
    when"QUIT"
      puts "YOU ARE A WIMP! #{@player.name}! exited Magic 8-ball".bold.colorize(:red)
      exit
    when "try again"
      initialize
    else
      random_answer
    end
  end

  def userChoicey
    puts "Now ask the Magic 8-ball another question!"
    userChoice = gets.strip
    if userChoice == 'q'
      exit
    else
    puts @answers[Random.rand(@answers.size)]
    userChoicey
    end
  end

  private 
  def game_player 
    puts "------------------ RUBY MAGIC EIGHTBALL ------------------".colorize(:green)
    puts "Enter your name:".bold.colorize(:black)
    puts ">".bold
    name = gets.strip
    puts "what is your age?".bold.colorize(:black)
    puts">".bold
    age = gets.to_i
    Player.new(name, age)
  end
end

class Player
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

play = EightBall.new
