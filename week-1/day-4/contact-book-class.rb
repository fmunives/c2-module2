class Contact
  attr_accessor :name
  attr_accessor :number
  def initialize(name, number)
    @name = name
    @number = number
  end
end

class ContactBook
  attr_accessor :contacts
  def initialize()
    @contacts = Hash.new
  end

  def add(name, number)
      name = name.downcase.to_sym
      contact = Contact.new(name, number)
      @contacts[name] = contact.number
  end
  
  def update(name)
    if @contacts[name]
      puts "What's the phone number?"
      number = gets.chomp.to_i
      @contacts[name] = number
      puts "#{name} has been updated with new rating of #{number}."
    else
      puts "Contact not found!"
    end
  end

  def display
    @contacts.each { |contact, number| puts "#{contact}: #{number}" }
  end

  def delete(name)
    if @contacts[name]
      @contacts.delete(name)
      puts "#{name} has been removed."
    else
      puts "Contact not found!"
    end
  end
  
end

my_contact_book = ContactBook.new()
my_contact_book.add("Fredd", 979201680)
my_contact_book.add("Saul", 979212680)
my_contact_book.add("Yenifer", 97945580)


puts "What would you like to do?"
puts "-- Type 'add' to add a contact."
puts "-- Type 'update' to update a contact."
puts "-- Type 'display' to display all contact."
puts "-- Type 'delete' to delete a contact."


choice = gets.chomp.downcase

case choice
when 'add'
  puts "What contact do you want to add?"
  contact = gets.chomp.to_sym
  contacts = my_contact_book.contacts
  if contacts[contact]
    puts "That contact already exists! Its number is #{contacts[contact]}."
  else
    puts "What's the phone number?"
    number = gets.chomp.to_i
    my_contact_book.add(contact, number)
    puts "#{number} has been added to #{contact}."
  end
when 'update'
  puts "What contact do you want to update?"
  contact = gets.chomp.to_sym
  my_contact_book.update(contact)
when 'display'
  my_contact_book.display
when 'delete'
  puts "What contact do you want to delete?"
  contact = gets.chomp.to_sym
  my_contact_book.delete(contact)
else 
  puts "Sorry, I didn't understand you."
end