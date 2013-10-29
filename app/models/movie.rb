require 'unirest'
require 'api'
class Movie < ActiveRecord::Base
  include Api
  def get_attributes
    api_key = ApiKey.new
    movie = Unirest::get("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=#{api_key.value}&q=#{self.title}&page_limit=1") 
    movie.body['movies'][0]
  end

end
