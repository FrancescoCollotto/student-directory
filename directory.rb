@students = []

def input_students
  puts "Please enter the names of the students"
  puts "to finish just hit return twice"
  # get the input name 
  name = gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student name and cohort to students list
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} #{@students.count == 1 ? "student" : "students"}"
    # ask for user input again to set name
    name = gets.chomp
  end
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

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. exit"
end

def show_students
  print_header
  print_names(@students)
  print_footer(@students)
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't understand what you are saying, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
#nothing happens until we call the methods
# students = input_students
# print_header
# print_names(students)
# print_footer(students)