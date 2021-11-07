#let's put all the students into an array
def input_students
  puts "Please enter the names of the students"
  puts "to finish just hit return twice"
  # create empty students array
  students = []
  # get the input name
  # alternatives to use chomp: chop() or delete_suffix("\n")
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
  puts "The students of Quantum Academy"
  puts "--------------"
end

def print_names(students)
  if !students.empty?
    students.each do |student|
      puts "#{student[:name].center(20,'-')} #{student[:country].center(20,'-')} #{student[:height].center(20,'-')}" + " (#{student[:cohort]} cohort)".center(20,'-')
    end
  end
end

def print_by_cohorts(students)
  if !students.empty?
    students_cohort = {}
    students.each do |student|
      name = student[:name]
      cohort = student[:cohort]
      if students_cohort[cohort] == nil 
        students_cohort[cohort] = []
      end
      students_cohort[cohort].push(name)
    end
    students_cohort.each do |cohort, students|
      puts "#{cohort} cohort:"
      students.each { |student| puts "  #{student}" }
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

# HARDCODED STUDENT ARRAY FOR TESTING PURPOSES
# students = [
#   {name: "Albert Einstein", country: "Germany", height: "1.70m", cohort: "November"},
#   {name: "Erwin Schrodinger", country: "Austria", height: "1.75m", cohort: "November"},
#   {name: "Paul Dirac", country: "United Kingdom", height: "1.85m", cohort: "January"},
#   {name: "Wolfgang Pauli", country: "Austria", height: "1.67m", cohort: "December"},
#   {name: "Werner Heisenberg", country: "Germany", height: "1.74m", cohort: "January"},
#   {name: "Ettore Majorana", country: "Italy", height: "1.73m", cohort: "December"},
#   {name: "Ludwig Boltzmann", country: "Austria", height: "1.80m", cohort: "March"},
#   {name: "Enrico Fermi", country: "Italy", height: "1.75m", cohort: "March"},
#   {name: "Max Planck", country: "Germany", height: "1.66m", cohort: "January"},
#   {name: "Max Born", country: "Germany", height: "1.81m", cohort: "November"},
#   {name: "Niels Bohr", country: "Denmark", height: "1.89m", cohort: "December"}
# ]

#nothing happens until we call the methods
students = input_students
print_header
print_names(students)
print_by_cohorts(students)
print_footer(students)