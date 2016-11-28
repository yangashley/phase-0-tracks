#Program that lets user record incident reports on police officers involved in misconduct. 
#Users can read reports recorded by others (where name, if submitted, will not be shown)
#Users can delete their report
#Users can add multiple reports (loop until through the process until user enters 'quit')

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

#update report
def update_report(db)
	puts "Please enter your reference id to update your report:"
		id = gets.to_i
	loop do
	puts "Please indicate which part of the report you would like to update: agency, description, location, date, or time. Enter 'quit' to quit."
	update = gets.chomp
	case update
		when "agency"
			puts "Enter your changes for the agency involved:"
			updated_agency = gets.chomp
			db.execute("UPDATE incidents SET agency_name='#{updated_agency}' WHERE id= #{id}")
		when "description"
			puts "Update your description (your new description will override your previous one):"
			updated_descr = gets.chomp
			db.execute("UPDATE incidents SET description='#{updated_descr}' WHERE id= #{id}")
		when "location"
			puts "Update the location of the incident:"
			updated_loc = gets.chomp
			db.execute("UPDATE incidents SET user_location='#{updated_loc}' WHERE id= #{id}")
		when "date"
			puts "Update the date of the incident:"
			updated_date = gets.chomp
			db.execute("UPDATE incidents SET incident_date='#{updated_date}' WHERE id= #{id}")
		when "time"
			puts "Update the time of the incident:"
			updated_time = gets.chomp
			db.execute("UPDATE incidents SET incident_time='#{updated_time}' WHERE id= #{id}")
		when "quit"
			break
	end
	end		
	puts "Your changes have been saved."
end

#delete incident report
def delete_incident(db)
	puts "Please enter your reference id to delete your report:"
	id = gets.to_i
	db.execute("DELETE FROM incidents WHERE id = #{id}")
	puts "Your incident report has been deleted."
end

#access an incident report by id 
def access_report(db)
	puts "Please enter your reference id to access your report:"
	id = gets.to_i
	puts db.execute("SELECT * FROM incidents WHERE id = #{id}")
end

#show all incidents reported
def show_all_incidents(db)
	puts "Previously reported incidents:"
	puts db.execute("SELECT agency_name, description, location, incident_date, incident_time FROM incidents")

end

#show user reference id based on username
def show_id(db)
	puts "Enter your username to retrieve your reference number:"
	user_name = gets.chomp
	puts "Your reference id is:"
	puts db.execute("SELECT id FROM incidents WHERE username = '#{user_name}'")
end

#Driver Code
puts "Welcome to Police Watchdog."
loop do
	puts "Please indicate what you would like to do with a number.\n
	1: Report an incident\n
	2: View all incidents\n
	3. View your reports\n
	4: Update a previously reported incident\n
	5: Delete a previously reported incident\n
	6: Retrieve reference number\n
	0: Exit"
	action = gets.to_i
	case action
		when 1 
			report_incident(reports_db)
		when 2
			show_all_incidents(reports_db)
		when 3
			access_report(reports_db)
		when 4
			update_report(reports_db)
		when 5
			delete_incident(reports_db)
		when 6
			show_id(reports_db)
		when 0
			break
		else
			puts "Please enter valid input"
	end
end