class NhlSeason < ActiveRecord::Base
  has_many :games
  has_many :fantasy_seasons
  
  def name
    # Being by grabbing just the year from the begins_on date
    year = begins_on.year
    
    # Add 1 to the year and convert to string
    next_year = (year + 1).to_s
    
    # And now a substring to grab just the last 2 numbers of the year
    short_next_year = next_year[2,2]
    
    # And finally we return the NHL season name
    "#{year}-#{short_next_year}"
  end
end
