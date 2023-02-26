# Write your code here.

def badge_maker name
   "Hello, my name is #{name}."
end

def batch_badge_creator names
   newArray = []
   names.each do |name|
      newArray << badge_maker(name)
   end   
   newArray
end

def assign_rooms speakers
   newArray = []
   speakers.each_with_index do |speaker, index|
      newArray << "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
   end
   newArray
end

def printer names
   badges = batch_badge_creator(names)
   rooms = assign_rooms(names)
   badges.each { |name| puts name }
   rooms.each {|name| puts name }
end
