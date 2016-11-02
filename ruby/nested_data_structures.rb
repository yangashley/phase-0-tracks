#A school with classroom full of desks full of supplies

school = {
	room_100: {
		student_desk: "Ashley",
		desk: [
			"Books",
			"Pencil Pouch",
			"Pencil Sharpener",
			"Box of Crayons"
		]
	},
	room_200: {
		student_desk: "Colin",
		desk: [
			"Books",
			"Eraser",
			"Ruler",
			"Box of Markers"
		]
	},
	room_300: {
		student_desk: "Meghann",
		desk: [
			"Books",
			"Protractor",
			"Pens",
			"Sticky Notes"
		]
	}

}





#switch the first item in the array with the last item:
school[:room_100][:desk][3], school[:room_100][:desk][0] = school[:room_100][:desk][0], school[:room_100][:desk][3] 

#reverse the order of all the items in the array which permanently changing the values of the array:
school[:room_300][:desk].reverse!

#look at the supplies in the desk of each student in each classroom
p school[:room_100]
p school[:room_200]
p school[:room_300]

#add new supplies to the desk of student in room 200
school[:room_200][:desk].push("Bookmark", "Scissors")

#remove supply from the desk of the student in room 300
school[:room_300][:desk].delete("Pens")
school[:room_300][:desk].delete_at(2)

#look at who the desk belongs to
p school[:room_100][:student_desk]
p school[:room_200][:student_desk]
p school[:room_300][:student_desk]


