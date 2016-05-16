require 'SQLite3'
$LIST = SQLite3::Database.new("list.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
		id INTEGER PRIMARY KEY,
		todo VARCHAR(255),
		priority INT
	);
SQL

$LIST.execute(create_table_cmd)

def add
	puts "What Task do you need to complete?"
	task = gets.chomp
	puts "What is the priority of the task (Enter number between 1-10)"
	priority = gets.chomp.to_i
	$LIST.execute("INSERT INTO list (todo, priority) VALUES (?,?)", [task, priority])
	view
end

def view
	view_table_cmd = <<-SQL
		SELECT * FROM list
		ORDER BY priority DESC
	SQL
	to_do_list = $LIST.execute(view_table_cmd)
	to_do_list.each{|todo| puts "ID = #{todo[0]} - #{todo[1]} - #{todo[2]}" if todo != []}
end

def delete 
	puts "Enter id to delete"
	id = gets.chomp.to_i
	delete_list_cmd = <<-SQL
		DELETE FROM list
		WHERE id = #{id}
	SQL
	$LIST.execute(delete_list_cmd)
end

while true 
	puts "
	Welcome To Do List...
	Instructions: Enter command to begin
		'view' - view all items
		'add' - add items to Database
		'delete' - remove item from Database
		'exit' - exit promgram
	"

	cmd = gets.chomp

	case cmd.downcase
	when "add"
		add
	when "view"
		view
	when "delete"
		view
		delete
		view
	when "exit"
		break
	else
		puts "Invalid input"
	end
end



