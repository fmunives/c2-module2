contact_book = {
  saul: 979903990,
  miguel: 979923991,
  yenifer: 929903493,
}

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
  if contact_book[contact]
    puts "That contact already exists! Its number is #{contact_book[contact]}."
  else
    puts "What's the phone number?"
    number = gets.chomp.to_i
    contact_book[contact] = number
    puts "#{number} has been added to #{contact}."
  end
when 'update'
  puts "What contact do you want to update?"
  contact = gets.chomp.to_sym
  if contact_book[contact]
    puts "What's the phone number?"
    number = gets.chomp.to_i
    contact_book[contact] = number
    puts "#{contact} has been updated with new rating of #{number}."
  else
    puts "Contact not found!"
  end
when 'display'
  contact_book.each { |contact, number| puts "#{contact}: #{number}" } 
when 'delete'
  puts "What contact do you want to delete?"
  contact = gets.chomp.to_sym
  if contact_book[contact]
    contact_book.delete(contact)
    puts "#{contact} has been removed."
  else
    puts "Contact not found!"
  end
else
  puts "Sorry, I didn't understand you."
end