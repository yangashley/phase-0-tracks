
# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db_2 = SQLite3::Database.new("people.db")
db_2.results_as_hash = true

# show students on the home page
# / is localhost:9393
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
# create a new (url) route to go to practice page 
# show all people in the people.db
get '/practice' do
	@persons = db_2.execute("SELECT * FROM persons")
	erb :practice
end

# takes you to page to add new person
get '/people/new' do
	erb :search_results
end

post '/people' do
	db_2.execute("INSERT INTO persons (name, age, gender) VALUES (?, ?, ?)", [params['name'], params['age'].to_i, params['gender']])
	redirect '/practice'
end
