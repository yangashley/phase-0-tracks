def to_boolean(word)
  if word == "true"
    true
  else
    false
  end
end

def valid_age(birth_year, age)
  calculated_age = 2016 - birth_year
  	if calculated_age == age
  		true
  	else
  		false
  	end
end

def has_vamp_name(name)
  if name == "Drake Cula" || name == "Tu Fang"
      true
  end
end

not_vamp = "Probably not a vampire."
prob_vamp = "Probably a vampire."
certainly_vamp = "Almost certainly a vampire." 
def_vamp = "Definitely a vampire"
result = "Results inconclusive."

puts "How many employees will be processed?"
num_employee = gets.to_i

index = 0
while index < num_employee

puts "What is the your name?"
name = gets.chomp
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
birth_year = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for for you? (true/false)"
wants_garlic = to_boolean(gets.chomp)
puts "Would you like to enroll in the company’s health insurance? (true/false)"
wants_insur = to_boolean(gets.chomp)

true_age = valid_age(birth_year, age)

if true_age && (wants_garlic || wants_insur)
  result = not_vamp
end
    
if !true_age && (!wants_garlic || !wants_insur)
  result = prob_vamp
end
    
if !true_age && (!wants_garlic && !wants_insur)
  result = certainly_vamp
end

if has_vamp_name(name)
  result = def_vamp
end    
  
loop do
puts "Do you have any allergies? Type 'done' to finish."
allergies = gets.chomp
  break if allergies == 'done'
  if allergies == 'sunshine'
    result = prob_vamp
    break
  end
end

puts result
index += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
