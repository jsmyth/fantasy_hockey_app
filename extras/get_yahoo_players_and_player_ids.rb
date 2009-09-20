#!/usr/bin/env ruby

require 'rubygems'
require 'hpricot'  # For parsing HTML
require 'open-uri' # For downloading the HTML

# Define the URL we want, download it, and stick it in the doc variable
url_to_fetch = 'http://sports.yahoo.com/nhl/players?type=lastname&first=1&query=&go=GO%21'
doc = open(url_to_fetch) { |f| Hpricot(f) }

# Pre-declare the player_links instance variable for use in the loop below
@player_links = Hash.new

# Grab the 8th table on the page as there is no #id to search for
player_table = doc.search("/html/body//table")[8]

# Loop over the tr tags in the 8th table we defined above...
player_table.search("tr").each do |tr|

  # If the tr has any a records, grab the first one. This is to avoid grabbing the player's team.
  if link = tr.search("a").first
    href = link.attributes['href']     # Grab the href for the given link.
    player_name = link.inner_html      # Grab the inner html which is the player name.
    @player_links[href] = player_name  # And finally store it in a out player_links hash.
  end
end

# Now we loop over the player_links to print out the NHL id and name for the given player
@player_links.each do |player_link,player_name|
  player_nhl_id = player_link.split('/').last
  puts "  #{player_nhl_id}: #{player_name}"
end
