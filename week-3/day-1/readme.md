Make a PR with your solutions for the day here 😎

# a little readme.

#(?<url>(http|https|ftp|ftps|file|smb):\/\/(\w+\.\w+))

# ?<url> => url (name group) so you can call the value like this => valid_url[:url]

# (http|https|ftp|ftps|file|smb) => validate the condition if http or https or ftp, etc.

# : => it's ":" character.

# \/ => it's "/" character. so we need two, then \/\/ => //

# \w => evaluate if a string or number [0-9a-zA-Z] and "+" give us one o more characters. so you

# can use like this \w+

# \. => It's "." character.

# so we can join world.com like this => \w+\.\w+ and obtain "world.com" like valid.

#besides, you can group the character by () and use name groups with ?<name>

# like this (?<url>(condition)), the name is url

#in this exercise I have 2 groups

# first group without name => (\w+) and the second(?<url>(condition)://world.com)
