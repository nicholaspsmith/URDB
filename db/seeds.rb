# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# A movie takes the following format
# {
#   title: "",
#   gif: "",
#   trailer_url: "",
#   description: ""
# }
puts "Clearing data in movies table"

Movie.destroy_all

puts "Populating movies"

 movies = [
  {
    title: "Happy Gilmore",
    gif_url: "http://media3.giphy.com/media/xRX1KqXHrw0c8/giphy.gif",
    trailer_url: "-6sT7MSJ4GE",
    description: "A hockey player becomes a professional golfer.  Hilarity ensues."
  },
    {
    title: "Billy Madison",
    gif_url: "http://media0.giphy.com/media/7SdIVBc0xjpja/giphy.gif",
    trailer_url: "ePHDaKdQqYo",
    description: "The son of a wealthy businessman tries to go back to school and pass 1st to 12th grade in 2 weeks."
  },
  {
    title: "American Psycho",
    gif_url: "http://media.giphy.com/media/Cc74glR0ahiww/giphy.gif",
    trailer_url: "fOnIapQ5H5A",
    description: "A wealthy New York investment banking executive hides his alternate psychopathic ego from his co-workers and friends as he escalates deeper into his illogical, gratuitous fantasies."
  },
    {
    title: "Boondock Saints",
    gif_url: "http://media.giphy.com/media/zvoQScJT5AoNO/giphy.gif",
    trailer_url: "ydXojYfCF3I",
    description: "Hot on the trail of the assailants behind the brutal murder of Russian thugs, FBI agent Paul Smecker (Willem Dafoe) is surprised to discover the killers are Irish twin brothers (Sean Patrick Flanery and Norman Reedus) who believe they've been chosen to rid the world of evil. But as they unleash more brutality on the criminals of Boston's underworld, Smecker finds himself torn between busting the vigilantes...and joining them!"
  },
    {
    title: "Pulp Fiction",
    gif_url: "http://media.giphy.com/media/gP3GAtEuuZTe8/giphy.gif",
    trailer_url: "s7EdQ4FqbhY",
    description: "Hit men, gangsters and robbers converge in Quentin Tarantino's violent tale of revenge. Stars John Travolta Samuel L. Jackson Bruce Willis and Uma Thurman"
  },
    {
    title: "Fight Club",
    gif_url: "http://media.giphy.com/media/143IwVXok0UMFi/giphy.gif",
    trailer_url: "SUXWAEX2jlg",
    description: "Rule number 1"
  },
    {
    title: "Rambo",
    gif_url: "http://media.giphy.com/media/HdhklzFCBzs1q/giphy.gif",
    trailer_url: "rjptQSfuTy8",
    description: "John Rambo, a former Green Beret and Medal of Honor recipient, is plagued by the awful changes that are common in Vietnam veterans like himself."
  },
    {
    title: "Deliverance",
    gif_url: "http://media.giphy.com/media/kAq6HQVQmK5WM/giphy.gif",
    trailer_url: "w9R4t_Nwy5E",
    description: "Four Atlanta businessmen go on a canoing trip down the Cahulawassee River."
  },
    {
    title: "Dirty Harry",
    gif_url: "http://media.giphy.com/media/mGdfzVs6goSpq/giphy.gif",
    trailer_url: "0ZvGn3438pM",
    description: "A movie about a couple killer, Harry Calahan, and a homicidal maniac.  The one with the badge is harry."
  },
    {
    title: "Scarface",
    gif_url: "http://media.giphy.com/media/owiMPjWC77KQU/giphy.gif",
    trailer_url: "7pQQHnqBa2E",
    description: "In 1980 Miami, a determined Cuban immigrant takes over a drug empire while succumbing to greed."
  }

 ]

movies.each do |m|
 Movie.create(title: m[:title], gif_url: m[:gif_url], trailer_url: m[:trailer_url], description: m[:description])
end



