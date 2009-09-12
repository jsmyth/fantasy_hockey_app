namespace :db do
  desc "This task imports the seed data."
  task :seed => :environment do
    path_to_seed_factory = RAILS_ROOT + "/db/factories/seed.rb"
    `#{path_to_seed_factory}`
  end

  desc "This task imports the dev_data"
  task :dev_data => :environment do
    path_to_dev_data_factory = RAILS_ROOT + "/db/factories/dev_data.rb"
    `#{path_to_dev_data_factory}`
  end

  desc "Reseed and Load DevData"
  task :baseline => [:migrate, :seed, :dev_data] do
  end

  desc "This drops the db, builds the db, and seeds the data."
  task :reseed => [:environment, 'db:reset', 'db:seed']

  desc "This task imports all of the player and team data."
  task :import => :environment do
    ENV['RAILS_ENV'] = ARGV.first || ENV['RAILS_ENV'] || 'development'
    require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")

    require 'rubygems'
    require 'hpricot'

    xml_file = File.expand_path(File.dirname(__FILE__) + "/../../db/import") + "/PLAYER_STATS_OVERALL_TOTALS-NHL-20090412.xml"
    doc = Hpricot.XML(open(xml_file))

    SECTIONS = %w{ player team playerstats }

    puts "Loading players from #{xml_file}."
    (doc/:statsentry).each do |statsentry|
      p = Player.new
      (statsentry/:player).each do |player|
        p.beacon_id  = (player/'ID').inner_html
        p.first_name = (player/'FirstName').inner_html
        p.last_name  = (player/'LastName').inner_html
        position   = (player/'Position').inner_html
        pos = Position.find_or_create_by_abbreviation position
        p.positions << pos
      end
      puts "Loading #{p.first_name} #{p.last_name} (#{p.positions.first.name})."    
      p.save
  
      t = Hash.new

      (statsentry/:team).each do |team|
        t["beacon_id"]    = (team/'ID').inner_html
        t["city"]         = (team/'City').inner_html
        t["name"]         = (team/'Name').inner_html
        t["abbreviation"] = (team/'Abbreviation').inner_html
      end
      
      nhl_team = NhlTeam.find_by_beacon_id(t["beacon_id"]) || NhlTeam.create (t)

      nhl_team.players << p
      
      puts "Loading #{nhl_team.city} #{nhl_team.name} (#{nhl_team.abbreviation})."
  
      s = Stat.new
      (statsentry/:playerstats).each do |playerstats|
        s.games_played    = (playerstats/'GamesPlayed').inner_html
        s.goals           = (playerstats/'Goals').inner_html
        s.assists         = (playerstats/'Assists').inner_html
        s.points          = (playerstats/'Points').inner_html
        s.hat_tricks      = (playerstats/'HatTricks').inner_html
        s.plus_minus      = (playerstats/'PlusMinus').inner_html
        s.shots           = (playerstats/'Shots').inner_html
        s.shot_percentage = (playerstats/'ShotPercentage').inner_html
        s.penalties       = (playerstats/'Penalties').inner_html
        s.penalty_minutes = (playerstats/'PenaltyMinutes').inner_html
        s.powerplay_goals = (playerstats/'PowerplayGoals').inner_html
        s.powerplay_assists = (playerstats/'PowerplayAssists').inner_html
        s.powerplay_points  = (playerstats/'PowerplayPoints').inner_html
        s.shorthanded_goals   = (playerstats/'ShorthandedGoals').inner_html
        s.shorthanded_assists = (playerstats/'ShorthandedAssists').inner_html
        s.shorthanded_points  = (playerstats/'ShorthandedPoints').inner_html
        s.game_winning_goals  = (playerstats/'GameWinningGoals').inner_html
        s.game_tying_goals    = (playerstats/'GameTyingGoals').inner_html
        s.hits                = (playerstats/'Hits').inner_html
        s.faceoffs            = (playerstats/'Faceoffs').inner_html
        s.faceoff_wins        = (playerstats/'FaceoffWins').inner_html
        s.faceoff_losses      = (playerstats/'FaceoffLosses').inner_html
        s.faceoff_percentage  = (playerstats/'FaceoffPercent').inner_html
        s.shootout_attempts   = (playerstats/'ShootoutAttempts').inner_html
        s.shootout_misses     = (playerstats/'ShootoutMisses').inner_html
        s.shootout_goals      = (playerstats/'ShootoutGoals').inner_html
        s.shootout_goal_percentage = (playerstats/'ShootoutGoalPct').inner_html
        #puts ", #{games_played}, #{goals}, #{assists}, #{points}"
      end
      s.player = p
      s.save
    end
  end
end