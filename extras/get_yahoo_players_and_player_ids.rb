#!/usr/bin/env ruby

ENV['RAILS_ENV'] = ARGV.first || ENV['RAILS_ENV'] || 'development'
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")

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

player_photos_path = 'public/images/players'

# Now we loop over the player_links to print out the NHL id and name for the given player
@player_links.each do |player_link,player_name|
  player_nhl_id = player_link.split('/').last
  print "#{player_name} (#{player_nhl_id}) -> "
  
  players = Player.find_all_by_last_name(player_name.split(' ', 2).last)
  @player = ''
  if players && File.exists?("#{player_photos_path}/#{player_nhl_id}.jpg")
    if players.count > 1
      @player = Player.find(:all,
        :conditions => {
          :last_name  => player_name.split(' ', 2).last,
          :first_name => player_name.split(' ').first
        }
      ).first rescue nil
    else
      @player = players.first
    end
    
    if @player
      File.open("#{player_photos_path}/#{player_nhl_id}.jpg") do |player_photo|
        @player.photo = player_photo
        @player.save
        puts "Found Player photo for #{@player.name}."
      end
    end
  else
    puts "Can't find player photo or missing photo for #{player_name}!"
  end
end
