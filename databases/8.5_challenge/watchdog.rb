#Program that lets user record incident reports on police officers involved in misconduct. 
#Users can read reports recorded by others (where name, if submitted, will not be shown)
#Users can delete their report
#Users can add multiple reports (loop until through the process until user enters 'quit')

#Schema: incidents table: id, agency_name, description, location, time

require 'sqlite3'

reports_db = SQLite3::Database.new("watchdog_reports.db")
#reports_db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS incidents(
	id INTEGER PRIMARY KEY, 
	username VARCHAR(255),
	agency_name VARCHAR(255),
	description VARCHAR(255),
	location VARCHAR(255),
	incident_date DATE,
	incident_time TIME 
	)
SQL

reports_db.execute(create_table_cmd)

#collect incident information to add to table
def report_incident(db)
	puts "Enter a username (this is private information):"
	user = gets.chomp
	puts "Enter the name of the police agency involved (ex: Chicago Police Department):"
	agency = gets.chomp
	puts "Please enter short, detailed description of the incident:"
	user_descrip = gets.chomp
	puts "Enter the location of the incident (address, city, zipcode, etc.):"
	user_location = gets.chomp
	puts "Enter the date of the incident (YYYY/MM/DD):"
	u_incident_date = gets.chomp
	puts "Enter the approximate time of the incident (HH:MM):"
	u_incident_time = gets.chomp
	db.execute("INSERT INTO incidents (username, agency_name, description, location, incident_date, incident_time) VALUES (?, ?, ?, ?, ?, ?)", [user, agency, user_descrip, user_location, u_incident_date, u_incident_time])
	puts "Your reference id is:"
	puts db.execute("SELECT id FROM incidents WHERE username='#{user}'")
end