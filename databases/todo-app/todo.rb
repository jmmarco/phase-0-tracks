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
  date VARCHAR(255)

)
SQL

# Create the table
db.execute(create_table_cmd)

# Method to add entry
def create_entry(db, item, date)
  db.execute("INSERT INTO todo (item, date) VALUES (?, ?)", [item, date])
end

# Method to get entries
def get_all_items(db)
  db.execute("SELECT * FROM todo")
end

# Driver code
date = Date.today.strftime("%m/%d/%y")
puts "Welcome to the Todoenator 4000(TM)"
puts "What would you like to do?"

loop do
  if input == 'show'
    get_all_items(db)
  elsif input == 'add'
    puts "Ok, enter something to do:"
    item = gets.chomp
    create_entry(db, item, date)
  end
  break if input == 'done'
end
