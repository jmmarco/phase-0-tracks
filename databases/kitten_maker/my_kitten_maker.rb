# OPERATION KITTEN EXPLOSION

# Talk about Object Relational Mapping (ORM)

# Require gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database
db = SQLite3::Database.new("kittens.db")

# Learn about fancy string delimeters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create kittens table (if it's not there already)
db.execute(create_table_cmd)
# add a test kitten

# explore ORM by retrieving data

# Add looootssss of kittens!
# so. many. kittens.
#KittenExplosion