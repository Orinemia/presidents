RAILS_ENV = 'development', 'production'
require File.expand_path('../environment', __FILE__)

require 'csv'

file = File.open("config/president1.csv")   #(r:iso8859-1)

   
   CSV.foreach(file) do |row| 
   
   @temp = row
   
   presidency  = @temp[0]
   president   = @temp[1]
   took_office = @temp[2]
   left_office = @temp[3]
   party       = @temp[4]
   picture     = @temp[5]
   state       = @temp[6]
   term        = @temp[7]
   biography   = @temp[8]

  
   @presidents = President.new
   @presidents.presidency   = presidency
   @presidents.president    = president
   @presidents.took_office  = took_office
   @presidents.left_office  = left_office
   @presidents.party        = party
   @presidents.picture      = picture
   @presidents.state        = state
   @presidents.term         = term
   @presidents.biography    = biography
   @presidents.save
end
#f.close #close file