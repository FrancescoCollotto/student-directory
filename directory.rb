@students = [] # an empty array accessible to all methods

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "\n-------MENU-------"
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. exit"
  puts "------------------"
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't understand what you are saying, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "to finish just hit return twice"
  # get the input name 
  name = STDIN.gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student name and cohort to students list
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} #{@students.count == 1 ? "student" : "students"}"
    # ask for user input again to set name
    name = STDIN.gets.chomp
  end
end

def show_students
  print_header
  print_names
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "------------------"
end

def print_names
  if !@students.empty?
    @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer
  if @students.count > 1
    puts "Overall, we have #{@students.count} great students"
  elsif @students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "No students added"
  end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    file.puts student_data.join(",")
  end
  file.close
  puts "Students list saved"
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
  puts "Student list loaded"
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exist?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} students from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

try_load_students
interactive_menu