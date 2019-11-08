# Ruby Contact List
# require "pry"
# Build a contact list
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
# The menu should loop until the user exits
# Bonus Objectives
# Delete a contact
# Edit a contact

@contact_list = [{
  name: 'lamb',
  phone: '83489249'
},
{
  name: 'Flying Spure',
  phone: '83489249'
},
{
  name: 'Broly',
  phone: '8013269561'
}]

def seperator
  puts "*"* 10
end

def menu
  puts "\n -- Contact List-- "
  puts "1) Create Contact"
  puts "2) View Contacts"
  puts "3) Delete"
  puts "4) edit contacts"
  puts "5) Exit\n"
 
  choice = gets.strip
  case choice 
  when "1"
      #adding a contact
      puts "Creat_Contact" 
      add_contact

  when "2"
     #print car list 
     puts "View_Contact" 
     view_contact

  when "3"
    puts "deleting_Contact"
    delete_contact

  when"4"
    puts "edit_contacts"
    edit_contacts

  when "5"
     #exiting the menu
     puts "Exit" 
     exit
    
  else
    puts "Invalid Choice"
  end 
end

#when 1
def add_contact
  puts 'Enter your full name'
  choice = gets.to_s
  puts 'Enter your number'
  phone = gets.to_i
  @contact_list << {:name => choice, :phone => phone}
  puts @contact_list
  menu
end

#when 2
def view_contact
  @contact_list.each_with_index do |contact, i|
    puts " #{i + 1}
    name: #{contact[:name]} \n
    phone: #{contact[:phone]}
    "
  end
  menu
end

def loop_contacts 
  @contact_list.each_with_index do |contact, i|
    puts " #{i + 1}
    name: #{contact[:name]} \n
    phone: #{contact[:phone]}
    "
  end
end

#when 3
def delete_contact
  loop_contacts
  choice = gets.to_i - 1
  @contact_list.delete_at(choice)
  menu
end
# menu

#when 4
def edit_contacts
  loop_contacts
  @choice = gets.to_i - 1
   puts "Would you like to edit the Name or Phone (N/P)"
   userChoice = gets.strip

   case userChoice
   when "n" 
    edit_name
   when "p"
    edit_phone
   else
    "try again"
    edit_contacts
   end
 end
 
def edit_name
  editedN = gets.strip
  puts "Edited Name: #{editedN}" 
  @contact_list[@choice][:name] = editedN
 menu
end

def edit_phone
  editedP = gets.strip
  puts "Edited Phone: #{editedP}" 
  @contact_list[@choice][:phone] = editedP
 menu
end

menu

