# You're hosting a conference and need to print badges for the speakers. Each badge should read: "Hello, my name is _____."
# Write a badge_maker method that, when provided a person's name, will create and return this message. E.g.:

def badge_maker(name)
  return "Hello, my name is #{name}."
end

# Write a batch_badge_creator method that takes an array of names as an argument and returns an array of badge messages.
def batch_badge_creator(attendees)
  greet_attendees = []
  attendees.each do |name|
  greet_attendees.push("Hello, my name is #{name}.")
  end
  return greet_attendees
end

# You just realized that you also need to give each speaker a room assignment. Write a method called assign_rooms that
# takes the list of speakers and assigns each speaker to a room. Make sure that each room only has one speaker.
# You have rooms 1-7. Return a list of room assignments in the form of: "Hello, _____! You'll be assigned to room _____!"
# Hint: Think about how you will assign a room number to each person. Array items are indexed, meaning that you can access each
# element by its index number. When you are iterating through an array, you can keep track of the index number of the current
# iteration using an enumerator method called each_with_index.

def assign_rooms(attendees)
  attendees_room = []
  attendees.each_with_index do |name, index|
  attendees_room.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
  end
return attendees_room
end


# Now you have to tell the printer what to print. Create a method called printer that will output first the results of the
# batch_badge_creator method and then of the assign_rooms method to the screen.
# Hint: Remember that methods can call other methods. If the return value of assign_rooms is an array of room assignments, how
# can you print out each assignment? You'll need to iterate over your array of room assignments in order to puts out each individual
# assignment.

def printer(attendees)
  batch_badge_creator(attendees).each do |x|
    puts x
  end
  assign_rooms(attendees).each do |x|
    puts x
  end
end
