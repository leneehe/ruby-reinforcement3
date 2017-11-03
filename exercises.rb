choochoo = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#1
if choochoo.last[:train] == "111"
  train111_dir = choochoo.last[:direction]
end
puts train111_dir

#2
choochoo.each do |train|
  if train[:train] == "80B"
    puts train80B_freq = train[:frequency_in_minutes]
  end
end

#3
choochoo.each do |train|
  if train[:train] == "610"
    puts train610_dir = train[:direction]
  end
end

#4
north_choochoos = []
choochoo.each do |train|
  if train[:direction] == "north"
    north_choochoos << train[:train]
  end
end

#5
east_choochoos = []
choochoo.each do |train|
  if train[:direction] == "east"
    east_choochoos << train[:train]
  end
end

#6
def dir_choochoos(choochoos, direction)
  direction_choochoos = []
  choochoos.each do |train|
    if train[:direction] == direction
      direction_choochoos << train[:train]
    end
  end
  return direction_choochoos
end

p dir_choochoos(choochoo, "north")
p dir_choochoos(choochoo, "east")

#7
choochoo.first[:first_departure_time] = 7
p choochoo













#
