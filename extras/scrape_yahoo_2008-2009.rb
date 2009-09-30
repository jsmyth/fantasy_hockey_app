#!/usr/bin/ruby

require 'rubygems'  
gem 'RubyInline' #, '= 3.6.3'  
require 'scrubyt'
require 'spreadsheet/excel'
include Spreadsheet

debug = false
verbose = false

yahoo_login = "theaduiolounge"
yahoo_password = '@#7$%*^&9'

number_of_pages = ARGV[0] ? ARGV[0].to_i : 1
number_of_players = number_of_pages * 25
league_number = 90763

puts "Name|Team|Pos|Status|O-R|Rank|Own%|G|A|+/-|PIMs|PPP|SHP|FW|Y!"
puts "START - Page Number #{number_of_pages}" if verbose == true
Scrubyt.logger = Scrubyt::Logger.new if debug == true
yahoo_data = Scrubyt::Extractor.define(:agent => :firefox) do
  #fetch 'https://login.yahoo.com'
  #fill_textfield 'login', yahoo_login
  #fill_textfield 'passwd', yahoo_password
  #submit

  # Uncomment below to follow links from my.yahoo.com
  #fetch 'http://my.yahoo.com'
  #click_link 'Sports'
  #click_link 'Fantasy'
  #click_link 'Pacific Coast Hockey League'
  #click_link 'Players'

  fetch "http://hockey.fantasysports.yahoo.com/hockey/#{league_number}/players/"
  
  select_option('stat1',  '08-09 Season (total)')
  select_option('pos',    'All Goaltenders'     )
  select_option('status', 'All Players'         )
  submit

  player '//body/div/div/div/div/table/tbody/tr' do
    name                '/td[1]/div[1]'
    yahoo_id "//a[@class='name']", :write_text => true do
      url 'href', :type => :attribute
    end
    
    team_and_position   '/td[1]/div/span'
    owner               '/td[5]'
    o_rank              '/td[6]'
    rank                '/td[7]'
    percent_owned       '/td[8]'
    goals               '/td[9]'
    assists             '/td[10]'
    plus_minus          '/td[11]'
    penalty_minutes     '/td[12]'
    power_play_points   '/td[13]'
    short_handed_points '/td[14]'
    face_off_wins       '/td[15]'
  end
  next_page("Next 25", { :limit => number_of_pages })
end

workbook = Excel.new("pchl_player_list_of_#{number_of_players}_players.xls")
worksheet = workbook.add_worksheet("Players")
puts "Name|Team|Position|Status|O-Rank|Rank|Owned By|Goals|Assists|+/-|PIMs|PPP|SHP|FW"
worksheet.write(0, 0, ["Name", "Team", "Pos", "Owner", "O-Rank", "Rank", "Owned By", "Goals", "Assists", "+/-", "PIMs", "PPP", "SHP", "FW", "Y!"])

xml = Hpricot.XML(yahoo_data.to_xml.to_s)

@row_increment = 0

(xml/"//player").each do |p|
  @row_increment += 1
  team_and_position   = p.search('//team_and_position').innerHTML.to_s.gsub(/[\(\)]/, '')
  team                = team_and_position.split(' - ', 2).first
  position            = team_and_position.split(' - ', 2).last
  name                = p.search('//name').innerHTML.to_s
  yahoo_id            = p.search('//url').innerHTML.to_s.split('/').last
  o_rank              = p.search('//o_rank').innerHTML.to_s
  rank                = p.search('//rank').innerHTML.to_s
  percent_owned       = p.search('//percent_owned').innerHTML.to_s
  goals               = p.search('//goals').innerHTML.to_s
  assists             = p.search('//assists').innerHTML.to_s
  plus_minus          = p.search('//plus_minus').innerHTML.to_s
  penalty_minutes     = p.search('//penalty_minutes').innerHTML.to_s
  power_play_points   = p.search('//power_play_points').innerHTML.to_s
  short_handed_points = p.search('//short_handed_points').innerHTML.to_s
  face_off_wins       = p.search('//face_off_wins').innerHTML.to_s
  owner               = p.search('//owner').innerHTML.to_s

  worksheet.write(@row_increment, 0, [name, team, position, owner, o_rank, rank, percent_owned, goals, assists, plus_minus, penalty_minutes, power_play_points, short_handed_points, face_off_wins, yahoo_id])

  puts name    + "|" + team       + "|" + position        + "|" + owner             + "|" +
       o_rank  + "|" + rank       + "|" + percent_owned   + "|" + goals             + "|" +
       assists + "|" + plus_minus + "|" + penalty_minutes + "|" + power_play_points + "|" +
       short_handed_points        + "|" + face_off_wins   + "|" + yahoo_id
end

workbook.close

#yahoo_data.to_xml.write($stdout, 1)
