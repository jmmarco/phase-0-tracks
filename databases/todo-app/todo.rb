# Require gems
require 'sqlite3'
require 'date'

### DB METHODS ###

# Create a database
db = SQLite3::Database.new("todo.db")

# Create a table using string delimeters
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS todo(
  id INTEGER PRIMARY KEY,
  item VARCHAR(255),
  date_added VARCHAR(255)
)
SQL

# Create the table
db.execute(create_table_cmd)

# Method to add entry
def create_entry(db, item, date)
  db.execute("INSERT INTO todo (item, date_added) VALUES (?, ?)", [item, date])
end

# Method to remove entry
def remove_entry(db, target_id)
  db.execute("DELETE FROM todo WHERE id = ?", [target_id])
end

## UI METHODS ##

def show_items(db)
  # Generate a fresh select from table
  list = db.execute("SELECT * FROM todo")
  # Iterate through each item
  list.each do |id, item, date|
    puts "You added: #{item} on #{date}. This item has an id of: #{id}"
  end
end

# Driver code

# Generate a date
date = Date.today.strftime("%m/%d/%y")
# Welcome user
puts "Welcome to the Todoenator 4000(TM)"

# Present options
loop do
  puts "What would you like to do?"
  puts "Available options are: 'show', 'add', 'remove' or 'done'."
  input = gets.chomp.downcase
  break if input == 'done'
  if input == 'show'
    show_items(db)
  elsif input == 'add'
    puts "Ok, enter something to do:"
    item = gets.chomp
    create_entry(db, item, date)
  elsif input == 'remove'
    puts "Ok, enter the id of the item you wish to remove:"
    id = gets.chomp.to_i
    remove_entry(db, id)
  else
    puts "You entered an invalid option. Try again."
  end
end
