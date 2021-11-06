#let's put all the students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
#then we print them
def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_names(names)
  names.each do |student|
    puts student
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#nothing happens until we call the methods
print_header
print_names(students)
print_footer(students)