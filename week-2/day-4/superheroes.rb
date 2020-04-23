require "json"
# require "awesome_print"

json = '
{
  "squadName": "Super hero squad",
  "homeTown": "Metro City",
  "formed": 2016,
  "secretBase": "Super tower",
  "active": true,
  "members": [
    {
      "name": "Molecule Man",
      "age": 29,
      "secretIdentity": "Dan Jukes",
      "powers": [
        "Radiation resistance",
        "Turning tiny",
        "Radiation blast"
      ]
    },
    {
      "name": "Madame Uppercut",
      "age": 39,
      "secretIdentity": "Jane Wilson",
      "powers": [
        "Million tonne punch",
        "Damage resistance",
        "Superhuman reflexes"
      ]
    }
  ]
}
'

hash_from_json = JSON.parse(json)
squadNane = hash_from_json["squadName"]
homeTown = hash_from_json["homeTown"]
formed = hash_from_json["formed"]

puts "Our squad is called #{squadNane}"
puts "We are from #{homeTown}"
puts "Our team started back in #{formed}"
puts "Our members are:"

hash_from_json["members"].each do |member| 
  puts  "- #{member["name"]}"
  puts  " - #{member["age"]}"
  puts " -Superpowers: #{member["powers"].join(", ")}"
end

# ap hash_from_json, index: false