# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Add a contact route
get '/contact/:address' do
  address = params[:address]
  "The address is: #{address}"
end

# Add a attaboy method using query parameters
get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# Method to add two numbers
get '/:num1/add/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  result = num1 + num2
  "#{num1} + #{num2} = #{result}"
end

# Method to search db in some way
get '/campus/:location' do
  cohort = db.execute("SELECT * FROM students WHERE campus=?", [params[:location]] )
  result = ''
  cohort.each do |student|
    result << "Name: #{student['name']}<br>"
    result << "Age: #{student['age']}<br>"
    result << "Campus: #{student['campus']}<br><br>"
  end
  result
end

# Release 1: Research on your own

# Is Sinatra the only web app library in Ruby? What are some others?
# Sinatra is not the only web app library, there are others such as: Ruby on Rails, Camping, Merb and Nitro among others.

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# Other options for using a db with Sinatra are PostgreSQl and MongoDB.

# What is meant by the term web stack?
# The term web stack refers to a collection of software that is used for web development. For example, to run a web application
# you need a web server, you also need an OS, an framework to develop an app, a database to hold persistent data, etc.
