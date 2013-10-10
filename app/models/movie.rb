class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles
  validates :title, presence: true

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end

  def audience_rating
    rotten_finder.ratings.audience_score unless rotten_finder.empty?
  end
  
  def snippet  
    if description == nil
      ""
    else
      description.truncate 50
    end
  end

  def self.average_rating
    average = 0
    scores = self.all.collect do |movie|
      average += movie.audience_rating unless movie.audience_rating == nil
    end
    if scores.compact.length > 0
      average /= scores.compact.length
    else
      nil
    end
  end

  def self.updated
    where("updated_at > created_at")
  end

  scope :american, -> { where(:nation => "USA") }
  scope :japanese, -> { where(:nation => "Japan") }
  scope :french, -> { where(:nation => "France") }
end
