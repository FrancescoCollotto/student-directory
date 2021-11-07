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
  if !students.empty?
    students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  if students.count > 1
    puts "Overall, we have #{students.count} great students"
  elsif students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "No students added"
  end
end

#nothing happens until we call the methods
students = input_students
print_header
print_names(students)
print_footer(students)