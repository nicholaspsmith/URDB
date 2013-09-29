require 'unirest'
class Movie < ActiveRecord::Base
  def get_attributes
    movie = Unirest::get("http://mymovieapi.com/?q=#{self.title}", headers = {
    "Accept" => "application/json"
    }) 
    movie.body[0]
  end

end
