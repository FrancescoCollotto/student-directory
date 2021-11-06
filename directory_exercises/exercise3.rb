# ****************
# EXERCISE 3
# Modify your program to only print the students whose name is shorter than 12 characters.
# ****************

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
  students.each do |student|
    if student[:name].chars.count < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
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