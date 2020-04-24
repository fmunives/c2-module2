require 'json'

file = File.read("tasks.json")

p new_file = JSON.parse(file)


