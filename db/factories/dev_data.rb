#!/usr/bin/env ruby

ENV['RAILS_ENV'] = ARGV.first || ENV['RAILS_ENV'] || 'development'
require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")


### Users ###

Factory.sequence(:display_name) { |n| "Test User ##{n}" }
Factory.sequence(:login)        { |n| "testuser#{n}" }

Factory.define :user do |f|
  f.display_name { Factory.next(:display_name) }
  f.login        { Factory.next(:login)        }
  f.password "password"
  f.password_confirmation { |u| u.password }
end
30.times { Factory(:user)}

### NHL Seasons ###

Factory.define :nhl_season_08_09, :class => NhlSeason do |f|
  f.begins_on '2008-10-07'
end
nhl_season_08_09 = Factory(:nhl_season_08_09)

Factory.define :nhl_season_09_10, :class => NhlSeason do |f|
  f.begins_on '2009-10-01'
end
nhl_season_09_10 = Factory(:nhl_season_09_10)

### Leagues ###

Factory.define :pchl_league, :class => League do |f|
  f.name 'PCHL'
  f.subdomain 'pchl'
end
pchl_league = Factory(:pchl_league)

Factory.define :test_league, :class => League do |f|
  f.name 'Test League'
  f.subdomain 'test'
end
test_league = Factory(:test_league)

Factory.define :dev_league, :class => League do |f|
  f.name 'Dev League'
  f.subdomain 'dev'
end
dev_league = Factory(:dev_league)

### Fantasy Seasons ###

Factory.define :fantasy_season_08_09_pchl, :class => FantasySeason do |f|
  f.max_roster_size '20'
  f.trade_deadline '2009-02-14'
  f.playoffs_start_on '2009-03-12'
end
fantasy_season_08_09_pchl = Factory(:fantasy_season_08_09_pchl, :nhl_season => nhl_season_08_09, :league => pchl_league)

Factory.define :fantasy_season_08_09_test, :class => FantasySeason do |f|
  f.max_roster_size '25'
  f.trade_deadline '2009-02-28'
  f.playoffs_start_on '2009-03-12'
end
fantasy_season_08_09_test = Factory(:fantasy_season_08_09_test, :nhl_season => nhl_season_08_09, :league => test_league)

Factory.define :fantasy_season_09_10_pchl, :class => FantasySeason do |f|
  f.max_roster_size '20'
  f.trade_deadline '2010-02-07'
  f.playoffs_start_on '2010-03-06'
end
fantasy_season_09_10_pchl = Factory(:fantasy_season_09_10_pchl, :nhl_season => nhl_season_09_10, :league => pchl_league)

Factory.define :fantasy_season_09_10_dev, :class => FantasySeason do |f|
  f.max_roster_size '30'
  f.trade_deadline '2010-02-28'
  f.playoffs_start_on '2010-03-06'
end
fantasy_season_09_10_dev = Factory(:fantasy_season_09_10_dev, :nhl_season => nhl_season_09_10, :league => dev_league)


### Fantasy Teams ###

Factory.define :shamrocks, :class => FantasyTeam do |f|
  f.name 'Shamrocks'
end
shamrocks = Factory(:shamrocks, :user => User.find_by_login('testuser8'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :the_hammer, :class => FantasyTeam do |f|
  f.name 'theHammer'
end
the_hammer = Factory(:the_hammer, :user => User.find_by_login('testuser1'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :pw, :class => FantasyTeam do |f|
  f.name 'P.W.'
end
pw = Factory(:pw, :user => User.find_by_login('testuser2'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :d12, :class => FantasyTeam do |f|
  f.name 'D12'
end
d12 = Factory(:d12, :user => User.find_by_login('testuser3'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :sb, :class => FantasyTeam do |f|
  f.name 'S.B.'
end
sb = Factory(:sb, :user => User.find_by_login('testuser4'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :windy, :class => FantasyTeam do |f|
  f.name 'Windy'
end
windy = Factory(:windy, :user => User.find_by_login('testuser5'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :warriors, :class => FantasyTeam do |f|
  f.name 'Warriors'
end
warriors = Factory(:warriors, :user => User.find_by_login('testuser6'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :drunk, :class => FantasyTeam do |f|
  f.name 'Drunk'
end
drunk = Factory(:drunk, :user => User.find_by_login('testuser7'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :bulls, :class => FantasyTeam do |f|
  f.name 'Bulls'
end
bulls = Factory(:bulls, :fantasy_seasons => [fantasy_season_08_09_test], :user => User.find_by_login('testuser9') )

Factory.define :patriots, :class => FantasyTeam do |f|
  f.name 'Patriots'
end
patriots = Factory(:patriots, :fantasy_seasons => [fantasy_season_08_09_test], :user => User.find_by_login('testuser10'))

Factory.define :steelers, :class => FantasyTeam do |f|
  f.name 'Steelers'
end
steelers = Factory(:steelers, :fantasy_seasons => [fantasy_season_08_09_test], :user => User.find_by_login('testuser11'))

Factory.define :niners, :class => FantasyTeam do |f|
  f.name 'Niners'
end
niners = Factory(:niners, :fantasy_seasons => [fantasy_season_08_09_test], :user => User.find_by_login('testuser12'))

Factory.define :browns, :class => FantasyTeam do |f|
  f.name 'Browns'
end
browns = Factory(:browns, :fantasy_seasons => [fantasy_season_08_09_test], :user => User.find_by_login('testuser13'))

Factory.define :eagles, :class => FantasyTeam do |f|
  f.name 'Eagles'
end
eagles = Factory(:eagles, :fantasy_seasons => [fantasy_season_08_09_test], :user => User.find_by_login('testuser14'))

Factory.define :cardinals, :class => FantasyTeam do |f|
  f.name 'Cardinals'
end
cardinals = Factory(:cardinals, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser15'))

Factory.define :chargers, :class => FantasyTeam do |f|
  f.name 'Chargers'
end
chargers = Factory(:chargers, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser16'))

Factory.define :bears, :class => FantasyTeam do |f|
  f.name 'Bears'
end
bears = Factory(:bears, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser17'))

Factory.define :lions, :class => FantasyTeam do |f|
  f.name 'Lions'
end
lions = Factory(:lions, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser18'))

Factory.define :packers, :class => FantasyTeam do |f|
  f.name 'Packers'
end
packers = Factory(:packers, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser19'))

Factory.define :falcons, :class => FantasyTeam do |f|
  f.name 'Falcons'
end
falcons = Factory(:falcons, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser20'))

Factory.define :vikings, :class => FantasyTeam do |f|
  f.name 'Vikings'
end
vikings = Factory(:vikings, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser21'))

Factory.define :saints, :class => FantasyTeam do |f|
  f.name 'Saints'
end
saints = Factory(:saints, :fantasy_seasons => [fantasy_season_09_10_dev], :user => User.find_by_login('testuser22'))