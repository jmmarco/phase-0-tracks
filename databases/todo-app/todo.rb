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
