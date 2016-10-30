puts "Welcome to the New Employee Portal. What is your name?"
user_name = gets.chomp

puts "Hi, #{user_name}. How old are you?"
age = gets.chomp

puts "Great! What year were you born?"
birth_year = gets.chomp

puts "Thanks. Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp

puts "Please list any allergies you may have or enter N/A if you don't have any."
allergies = gets.chomp

puts "Sounds good. One final question: Would you like to enroll in the company’s health insurance? (yes/no)"
health_insur = gets.chomp
puts "Wonderful! Thanks for the information."

def employee_processor
not_vamp = "Probably not a vampire."
prob_vamp = "Probably a vampire."
certainly_vamp = "Almost certainly a vampire." 
def_vamp = "Definitely a vampire"
result = "Results inconclusive."

puts "How many employees will you be processing?"
num_employees = gets.to_i

total_processed = 0
while total_processed < num_employees

puts "What is the employee's name?"
employee_name = gets.chomp
puts "Did #{employee_name} provide their actual age? (yes/no)"
age_right = gets.chomp
puts "Did #{employee_name} want garlic bread? (yes/no)"
garlic_bread = gets.chomp
puts "Did #{employee_name} enroll in the company health insurance? (yes/no)"
want_insur = gets.chomp
puts "Did #{employee_name} answer all the questions correctly like a werewolf would? (yes/no)"
correct_answers = gets.chomp

if age_right == "yes" && (garlic_bread == "yes" || want_insur == "yes")
	 result = not_vamp
end

if age_right == "no" && (garlic_bread == "no" || want_insur == "no")
	 result = prob_vamp
end

if age_right== "no" && (garlic_bread == "no" && want_insur == "no")
	 result = certainly_vamp 
end

if correct_answers == "yes" && (employee_name == "Drake Cula" || employee_name == "Tu Fang")
	 result = def_vamp 
end

total_processed += 1
puts "Results for #{employee_name}: #{result}"
end
end
puts employee_processor
