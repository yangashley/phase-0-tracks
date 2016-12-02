# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "1033 W Van Buren St, Chicago, IL 60607"
end

# http://localhost:9393/great_job?name=Ashley
get '/great_job' do
 name = params[:name]
 if name
   "Good job, #{name}!"
 else
   "Good job!"
 end
end

# http://localhost:9393/100/2
get '/:number1/:number2' do 
  result = params[:number1].to_i + params[:number2].to_i 
  result.to_s
  "#{params[:number1]} + #{params[:number2]} = #{result}"
end

# http://localhost:9393/search_students?name=Dandre%20Wiegand
get '/search_students' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[0]
  student.to_s
end
