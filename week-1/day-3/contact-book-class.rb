class Contact
  attr_accessor :name
  attr_accessor :number
  def initialize(name, number)
    @name = name
    @number = number
  end
end

class ContactBook < Contact
  def initialize()
    @contacts = []
    super
  end

  def add
    puts "What contact do you want to add?"
    name = gets.chomp
    if @contacts[name]
      puts "That contact already exists! Its number is #{@contacts[@number]}."
    else
      puts "What's the phone number?"
      number = gets.chomp.to_i
      @contacts << Contact.new(@name, number)
      puts "#{@number} has been added to #{@name}."
    end
  end
  
  def update
    puts "What contact do you want to update?"
    name = gets.chomp
    if @contacts[name]
      puts "What's the phone number?"
      @number = gets.chomp.to_i
      contact_book[contact] = number
      puts "#{contact} has been updated with new rating of #{number}."
    else
      puts "Contact not found!"
    end
  
end

puts "What would you like to do?"
puts "-- Type 'add' to add a contact."
puts "-- Type 'update' to update a contact."
puts "-- Type 'display' to display all contact."
puts "-- Type 'delete' to delete a contact."