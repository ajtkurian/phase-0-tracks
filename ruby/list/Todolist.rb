class TodoList
	attr_reader :get_items
	def initialize(list_array)
		@get_items = list_array
	end

	def add_item(item)
		@get_items << item
	end

	def get_item(index)
		@get_items[index]
	end

	def delete_item(item)
		@get_items.delete(item)
	end

end