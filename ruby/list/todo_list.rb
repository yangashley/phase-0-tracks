class TodoList

	def initialize(list)
		@todo_list = list
	end

	def get_items
		@todo_list
	end

	def add_item(new_item)
		@todo_list << new_item
	end

	def delete_item(delete_chore)
		@todo_list.delete(delete_chore)
	end

	def get_item(list_index)
		@todo_list[list_index]
	end
end