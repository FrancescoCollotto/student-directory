# ****************
# EXERCISE 2
# Modify your program to only print the students whose name begins with a specific letter.
# ****************

#let's put all the students into an array
def input_students
  puts "Please enter the names of the students"
  puts "to finish just hit return twice"
  # create empty students array
  students = []
  # get the input name 
  name = gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student name and cohort to students list
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # ask for user input again to set name
    name = gets.chomp
  end
  # return the array of students
  students
end

#then we print them
def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_names(students)
  puts "I will print names beginnig with letter __? . choose a letter:"
  l = gets.chomp.upcase
  count = 0
  students.each do |student|
    if student[:name].chars.first == l
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
      count += 1
    end
  end
  if count == 0
    puts "Sorry no students found"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print_names(students)
print_footer(students)