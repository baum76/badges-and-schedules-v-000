require "pry"

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|attendee| badges << badge_maker(attendee)}
  return badges
end

def assign_rooms(attendees)
  attendees.map.with_index {|attendee, room_number| "Hello, #{attendee}! You'll be assigned to room #{room_number + 1}!"}
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |rooms|
    puts rooms
  end
end
