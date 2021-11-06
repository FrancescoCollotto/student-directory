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
    # ask for more user input
    puts "Add cohort month"
    cohort = gets.chomp
    # if input is empty set it to default value 'none'
    if cohort.strip.empty? then cohort = "none" end
    puts "Add country of birth"
    country = gets.chomp
    if country.strip.empty? then country = "none" end
    puts "Add height"
    height = gets.chomp
    if height.strip.empty? then height = "none" end
    # add the user inputs to students list
    students << {name: name, cohort: cohort, country: country, height: height}
    puts "Now we have #{students.count} students"
    # ask for user input again to set name
    puts "Add new student"
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
    puts "#{student[:name].center(20,'-')} #{student[:country].center(20,'-')} #{student[:height].center(20,'-')}" + " (#{student[:cohort]} cohort)".center(20,'-')
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