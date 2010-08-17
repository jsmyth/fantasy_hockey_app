#!/usr/bin/env ruby

ENV['RAILS_ENV'] = ARGV.first || ENV['RAILS_ENV'] || 'development'
require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")


### Test Users ###

Factory.sequence(:display_name) { |n| "Test User ##{n}" }
Factory.sequence(:login)        { |n| "testuser#{n}" }

Factory.define :user do |f|
  f.display_name { Factory.next(:display_name) }
  f.login        { Factory.next(:login)        }
  f.password "password"
  f.password_confirmation { |u| u.password }
end
30.times { Factory(:user)}

### PCHL Users ###

Factory.define :jim, :class => User do |f|
  f.display_name 'Jim Smyth'
  f.login 'jim'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
jim = Factory(:jim)
  
Factory.define :jeremy, :class => User do |f|
  f.display_name 'Jeremy Pruitt'
  f.login 'jeremy'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
jeremy = Factory(:jeremy)

Factory.define :rob, :class => User do |f|
  f.display_name 'Rob Bell'
  f.login 'rob'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
rob = Factory(:rob)

Factory.define :mike, :class => User do |f|
  f.display_name 'Mike Rezek'
  f.login 'mike'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
mike = Factory(:mike)

Factory.define :chris, :class => User do |f|
  f.display_name 'Chris Gachowski'
  f.login 'chris'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
chris = Factory(:chris)

Factory.define :rich, :class => User do |f|
  f.display_name 'Rich Brown'
  f.login 'rich'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
rich = Factory(:rich)

Factory.define :erik, :class => User do |f|
  f.display_name 'Erik Westrup'
  f.login 'erik'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
erik = Factory(:erik)

Factory.define :dan, :class => User do |f|
  f.display_name 'Dan Hagen'
  f.login 'dan'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
dan = Factory(:dan)

Factory.define :mikey, :class => User do |f|
  f.display_name 'Mike Byers'
  f.login 'mikey'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
mikey = Factory(:mikey)

Factory.define :gilby, :class => User do |f|
  f.display_name 'Chris Gilbertson'
  f.login 'gilby'
  f.password 'password'
  f.password_confirmation { |u| u.password }
end
gilby = Factory(:gilby)

### NHL Seasons ###

Factory.define :nhl_season_08_09, :class => NhlSeason do |f|
  f.begins_on '2008-10-07'
end
nhl_season_08_09 = Factory(:nhl_season_08_09)

Factory.define :nhl_season_09_10, :class => NhlSeason do |f|
  f.begins_on '2009-10-01'
end
nhl_season_09_10 = Factory(:nhl_season_09_10)

Factory.define :nhl_season_10_11, :class => NhlSeason do |f|
  f.begins_on '2010-10-07'
end
nhl_season_10_11 = Factory(:nhl_season_10_11)

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
  f.max_nhl_roster_size '20'
  f.max_minor_roster_size '5'
  f.max_nhl_keepers '4'
  f.max_minor_keepers '3'
  f.trade_deadline '2009-02-14'
  f.playoffs_start_on '2009-03-12'
end
fantasy_season_08_09_pchl = Factory(:fantasy_season_08_09_pchl, :nhl_season => nhl_season_08_09, :league => pchl_league)

Factory.define :fantasy_season_08_09_test, :class => FantasySeason do |f|
  f.max_nhl_roster_size '25'
  f.max_minor_roster_size '10'
  f.max_nhl_keepers '0'
  f.max_minor_keepers '0'
  f.trade_deadline '2009-02-28'
  f.playoffs_start_on '2009-03-12'
end
fantasy_season_08_09_test = Factory(:fantasy_season_08_09_test, :nhl_season => nhl_season_08_09, :league => test_league)

Factory.define :fantasy_season_09_10_pchl, :class => FantasySeason do |f|
  f.max_nhl_roster_size '20'
  f.max_minor_roster_size '5'
  f.max_nhl_keepers '4'
  f.max_minor_keepers '3'
  f.trade_deadline '2010-02-07'
  f.playoffs_start_on '2010-03-06'
end
fantasy_season_09_10_pchl = Factory(:fantasy_season_09_10_pchl, :nhl_season => nhl_season_09_10, :league => pchl_league)

Factory.define :fantasy_season_09_10_dev, :class => FantasySeason do |f|
  f.max_nhl_roster_size '30'
  f.max_minor_roster_size '0'
  f.max_minor_keepers '0'
  f.max_nhl_keepers '6'
  f.trade_deadline '2010-02-28'
  f.playoffs_start_on '2010-03-06'
end
fantasy_season_09_10_dev = Factory(:fantasy_season_09_10_dev, :nhl_season => nhl_season_09_10, :league => dev_league)

Factory.define :fantasy_season_10_11_pchl, :class => FantasySeason do |f|
  f.max_nhl_roster_size '20'
  f.max_minor_roster_size '5'
  f.max_nhl_keepers '3'
  f.max_minor_keepers '3'
  f.trade_deadline '2011-02-07'
  f.playoffs_start_on '2011-03-06'
end
fantasy_season_10_11_pchl = Factory(:fantasy_season_10_11_pchl, :nhl_season => nhl_season_10_11, :league => pchl_league)


### Fantasy Teams ###
fantasy_team_photos_path = 'public/images/fantasy_teams'

Factory.define :shamrocks, :class => FantasyTeam do |f|
  f.name 'Shamrocks'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'Shamrocks.jpg'), 'image/jpg') }
end
shamrocks = Factory(:shamrocks, :user => User.find_by_login('jim'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :the_hammer, :class => FantasyTeam do |f|
  f.name 'theHammer'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'theHammer.jpg'), 'image/jpg') }
end
the_hammer = Factory(:the_hammer, :user => User.find_by_login('jeremy'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :pw, :class => FantasyTeam do |f|
  f.name 'Project Watermelon'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'ProjectWatermelon.jpg'), 'image/jpg') }
  
end
pw = Factory(:pw, :user => User.find_by_login('chris'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :d12, :class => FantasyTeam do |f|
  f.name 'Dirty Dozen'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'DirtyDozen.jpg'), 'image/jpg') }
end
d12 = Factory(:d12, :user => User.find_by_login('rich'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

### STRANGE BREW ###
Factory.define :sb, :class => FantasyTeam do |f|
  f.name 'Strange Brew'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'StrangeBrew.jpg'), 'image/jpg') }
end
sb = Factory(:sb, :user => User.find_by_login('erik'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :windy, :class => FantasyTeam do |f|
  f.name 'Windy City Rumblers'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'WindyCityRumblers.jpg'), 'image/jpg') }
end
windy = Factory(:windy, :user => User.find_by_login('mike'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :warriors, :class => FantasyTeam do |f|
  f.name 'Warriors'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'Warriors.jpg'), 'image/jpg') }
end
warriors = Factory(:warriors, :user => User.find_by_login('rob'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :drunk, :class => FantasyTeam do |f|
  f.name 'Drunk Zamboni Drivers'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'DrunkZamboniDrivers.jpg'), 'image/jpg') }
end
drunk = Factory(:drunk, :user => User.find_by_login('dan'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl, fantasy_season_10_11_pchl])

Factory.define :mikey_team, :class => FantasyTeam do |f|
  f.name 'Mikey Team'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'DrunkZamboniDrivers.jpg'), 'image/jpg') }
end
mikey_team = Factory(:mikey_team, :user => User.find_by_login('mikey'), :fantasy_seasons => [fantasy_season_10_11_pchl])

Factory.define :chris_team, :class => FantasyTeam do |f|
  f.name 'Chris Team'
  f.photo { ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, fantasy_team_photos_path, 'DrunkZamboniDrivers.jpg'), 'image/jpg') }
end
chris_team = Factory(:chris_team, :user => User.find_by_login('chris'), :fantasy_seasons => [fantasy_season_10_11_pchl])

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

### Roster Assignments ###

alex_ovechkin = Player.find_by_beacon_id 3495
Factory.define :pchl_shamrocks_alex_ovechkin, :class => RosterAssignment do |f|
  f.player_id alex_ovechkin.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_alex_ovechkin = Factory(:pchl_shamrocks_alex_ovechkin)

ilya_kovalchuk = Player.find_by_beacon_id 334
Factory.define :pchl_shamrocks_ilya_kovalchuk, :class => RosterAssignment do |f|
  f.player_id ilya_kovalchuk.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_ilya_kovalchuk = Factory(:pchl_shamrocks_ilya_kovalchuk)

rick_nash = Player.find_by_beacon_id 319
Factory.define :pchl_shamrocks_rick_nash, :class => RosterAssignment do |f|
  f.player_id rick_nash.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_rick_nash = Factory(:pchl_shamrocks_rick_nash)

bobby_ryan = Player.find_by_beacon_id 4270
Factory.define :pchl_shamrocks_bobby_ryan, :class => RosterAssignment do |f|
  f.player_id bobby_ryan.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_bobby_ryan = Factory(:pchl_shamrocks_bobby_ryan)

jonas_gustavsson = Player.find_by_beacon_id 4687
Factory.define :pchl_shamrocks_jonas_gustavsson, :class => RosterAssignment do |f|
  f.player_id jonas_gustavsson.id
  f.fantasy_team_id 1
  f.minor_league true
  f.keeper true
end
pchl_shamrocks_jonas_gustavsson = Factory(:pchl_shamrocks_jonas_gustavsson)


sidney_crosby = Player.find_by_beacon_id 3490
Factory.define :pchl_thehammer_sidney_crosby, :class => RosterAssignment do |f|
  f.player_id sidney_crosby.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_sidney_crosby = Factory(:pchl_thehammer_sidney_crosby)

jonathan_toews = Player.find_by_beacon_id 4262
Factory.define :pchl_thehammer_jonathan_toews, :class => RosterAssignment do |f|
  f.player_id jonathan_toews.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_jonathan_toews = Factory(:pchl_thehammer_jonathan_toews)

niklas_backstrom = Player.find_by_beacon_id 4264
Factory.define :pchl_thehammer_niklas_backstrom, :class => RosterAssignment do |f|
  f.player_id niklas_backstrom.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_niklas_backstrom = Factory(:pchl_thehammer_niklas_backstrom)

marian_gaborik = Player.find_by_beacon_id 736
Factory.define :pchl_thehammer_marian_gaborik, :class => RosterAssignment do |f|
  f.player_id marian_gaborik.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_marian_gaborik = Factory(:pchl_thehammer_marian_gaborik)

nikita_filatov = Player.find_by_beacon_id 4496
Factory.define :pchl_thehammer_nikita_filatov, :class => RosterAssignment do |f|
  f.player_id nikita_filatov.id
  f.fantasy_team_id 2
  f.minor_league true
  f.keeper true
end
pchl_thehammer_nikita_filatov = Factory(:pchl_thehammer_nikita_filatov)

james_vanriemsdyk = Player.find_by_beacon_id 4683
Factory.define :pchl_thehammer_james_vanriemsdyk, :class => RosterAssignment do |f|
  f.player_id james_vanriemsdyk.id
  f.fantasy_team_id 2
  f.minor_league true
  f.keeper true
end
pchl_thehammer_james_vanriemsdyk = Factory(:pchl_thehammer_james_vanriemsdyk)


patrick_kane = Player.find_by_beacon_id 4265
Factory.define :pchl_pw_patrick_kane, :class => RosterAssignment do |f|
  f.player_id patrick_kane.id
  f.fantasy_team_id 3
  f.keeper true
end
pchl_pw_patrick_kane = Factory(:pchl_pw_patrick_kane)

vincent_lecavalier = Player.find_by_beacon_id 443
Factory.define :pchl_pw_vincent_lecavalier, :class => RosterAssignment do |f|
  f.player_id vincent_lecavalier.id
  f.fantasy_team_id 3
  f.keeper true
end
pchl_pw_vincent_lecavalier = Factory(:pchl_pw_vincent_lecavalier)

martin_stlouis = Player.find_by_beacon_id 458
Factory.define :pchl_pw_martin_stlouis, :class => RosterAssignment do |f|
  f.player_id martin_stlouis.id
  f.fantasy_team_id 3
  f.keeper true
end
pchl_pw_martin_stlouis = Factory(:pchl_pw_martin_stlouis)

daniel_sedin = Player.find_by_beacon_id 438
Factory.define :pchl_pw_daniel_sedin, :class => RosterAssignment do |f|
  f.player_id daniel_sedin.id
  f.fantasy_team_id 3
  f.keeper true
end
pchl_pw_daniel_sedin = Factory(:pchl_pw_daniel_sedin)

henrik_sedin = Player.find_by_beacon_id 439
Factory.define :pchl_pw_henrik_sedin, :class => RosterAssignment do |f|
  f.player_id henrik_sedin.id
  f.fantasy_team_id 3
  f.keeper true
end
pchl_pw_henrik_sedin = Factory(:pchl_pw_henrik_sedin)

patrick_marleau = Player.find_by_beacon_id 376
Factory.define :pchl_pw_patrick_marleau, :class => RosterAssignment do |f|
  f.player_id patrick_marleau.id
  f.fantasy_team_id 3
  f.keeper true
end
pchl_pw_patrick_marleau = Factory(:pchl_pw_patrick_marleau)

torrey_mitchell = Player.find_by_beacon_id 4283
Factory.define :pchl_pw_torrey_mitchell, :class => RosterAssignment do |f|
  f.player_id torrey_mitchell.id
  f.fantasy_team_id 3
  f.minor_league true
  f.keeper true
end
pchl_pw_torrey_mitchell = Factory(:pchl_pw_torrey_mitchell)

jordan_eberle = Player.find_by_beacon_id 4505
Factory.define :pchl_pw_jordan_eberle, :class => RosterAssignment do |f|
  f.player_id jordan_eberle.id
  f.fantasy_team_id 3
  f.minor_league true
  f.keeper true
end
pchl_pw_jordan_eberle = Factory(:pchl_pw_jordan_eberle)


evgeni_malkin = Player.find_by_beacon_id 3652
Factory.define :pchl_d12_evgeni_malkin, :class => RosterAssignment do |f|
  f.player_id evgeni_malkin.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_evgeni_malkin = Factory(:pchl_d12_evgeni_malkin)

mike_green = Player.find_by_beacon_id 925
Factory.define :pchl_d12_mike_green, :class => RosterAssignment do |f|
  f.player_id mike_green.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_mike_green = Factory(:pchl_d12_mike_green)

alexander_semin = Player.find_by_beacon_id 622
Factory.define :pchl_d12_alexander_semin, :class => RosterAssignment do |f|
  f.player_id alexander_semin.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_alexander_semin = Factory(:pchl_d12_alexander_semin)

mikko_koivu = Player.find_by_beacon_id 3763
Factory.define :pchl_d12_mikko_koivu, :class => RosterAssignment do |f|
  f.player_id mikko_koivu.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_mikko_koivu = Factory(:pchl_d12_mikko_koivu)

colin_wilson = Player.find_by_beacon_id 4676
Factory.define :pchl_d12_colin_wilson, :class => RosterAssignment do |f|
  f.player_id colin_wilson.id
  f.fantasy_team_id 4
  f.minor_league true
  f.keeper true
end
pchl_d12_colin_wilson = Factory(:pchl_d12_colin_wilson)

sergei_kostitsyn = Player.find_by_beacon_id 4340
Factory.define :pchl_d12_sergei_kostitsyn, :class => RosterAssignment do |f|
  f.player_id sergei_kostitsyn.id
  f.fantasy_team_id 4
  f.minor_league true
  f.keeper true
end
pchl_d12_sergei_kostitsyn = Factory(:pchl_d12_sergei_kostitsyn)


jarome_iginla = Player.find_by_beacon_id 411
Factory.define :pchl_sb_jarome_iginla, :class => RosterAssignment do |f|
  f.player_id jarome_iginla.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_jarome_iginla = Factory(:pchl_sb_jarome_iginla)

marian_hossa = Player.find_by_beacon_id 219
Factory.define :pchl_sb_marian_hossa, :class => RosterAssignment do |f|
  f.player_id marian_hossa.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_marian_hossa = Factory(:pchl_sb_marian_hossa)

steven_stamkos = Player.find_by_beacon_id 4457
Factory.define :pchl_sb_steven_stamkos, :class => RosterAssignment do |f|
  f.player_id steven_stamkos.id
  f.fantasy_team_id 5
  f.minor_league true
  f.keeper true
end
pchl_sb_steven_stamkos = Factory(:pchl_sb_steven_stamkos)

zdeno_chara = Player.find_by_beacon_id 218
Factory.define :pchl_sb_zdeno_chara, :class => RosterAssignment do |f|
  f.player_id zdeno_chara.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_zdeno_chara = Factory(:pchl_sb_zdeno_chara)

joe_pavelski = Player.find_by_beacon_id 4136
Factory.define :pchl_sb_joe_pavelski, :class => RosterAssignment do |f|
  f.player_id joe_pavelski.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_joe_pavelski = Factory(:pchl_sb_joe_pavelski)

tyler_myers = Player.find_by_beacon_id 4659
Factory.define :pchl_sb_tyler_myers, :class => RosterAssignment do |f|
  f.player_id tyler_myers.id
  f.fantasy_team_id 5
  f.minor_league true
  f.keeper true
end
pchl_sb_tyler_myers = Factory(:pchl_sb_tyler_myers)

bryan_little = Player.find_by_beacon_id 4297
Factory.define :pchl_sb_bryan_little, :class => RosterAssignment do |f|
  f.player_id bryan_little.id
  f.fantasy_team_id 5
  f.minor_league true
  f.keeper true
end
pchl_sb_bryan_little = Factory(:pchl_sb_bryan_little)


joe_thornton = Player.find_by_beacon_id 82
Factory.define :pchl_windy_joe_thornton, :class => RosterAssignment do |f|
  f.player_id joe_thornton.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_joe_thornton = Factory(:pchl_windy_joe_thornton)

phil_kessel = Player.find_by_beacon_id 4008
Factory.define :pchl_windy_phil_kessel, :class => RosterAssignment do |f|
  f.player_id phil_kessel.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_phil_kessel = Factory(:pchl_windy_phil_kessel)

paul_stastny = Player.find_by_beacon_id 4019
Factory.define :pchl_windy_paul_stastny, :class => RosterAssignment do |f|
  f.player_id paul_stastny.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_paul_stastny = Factory(:pchl_windy_paul_stastny)

anze_kopitar = Player.find_by_beacon_id 4033
Factory.define :pchl_windy_anze_kopitar, :class => RosterAssignment do |f|
  f.player_id anze_kopitar.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_anze_kopitar = Factory(:pchl_windy_anze_kopitar)

derick_brassard = Player.find_by_beacon_id 4354
Factory.define :pchl_windy_derick_brassard, :class => RosterAssignment do |f|
  f.player_id derick_brassard.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_derick_brassard = Factory(:pchl_windy_derick_brassard)

john_tavares = Player.find_by_beacon_id 4680
Factory.define :pchl_windy_john_tavares, :class => RosterAssignment do |f|
  f.player_id john_tavares.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_john_tavares = Factory(:pchl_windy_john_tavares)

victor_hedman = Player.find_by_beacon_id 4685
Factory.define :pchl_windy_victor_hedman, :class => RosterAssignment do |f|
  f.player_id victor_hedman.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_victor_hedman = Factory(:pchl_windy_victor_hedman)


jeff_carter = Player.find_by_beacon_id 3488
Factory.define :pchl_warriors_jeff_carter, :class => RosterAssignment do |f|
  f.player_id jeff_carter.id
  f.fantasy_team_id 7
  f.keeper true
end
pchl_warriors_jeff_carter = Factory(:pchl_warriors_jeff_carter)

mike_richards = Player.find_by_beacon_id 3489
Factory.define :pchl_warriors_mike_richards, :class => RosterAssignment do |f|
  f.player_id mike_richards.id
  f.fantasy_team_id 7
  f.keeper true
end
pchl_warriors_mike_richards = Factory(:pchl_warriors_mike_richards)

eric_staal = Player.find_by_beacon_id 247
Factory.define :pchl_warriors_eric_staal, :class => RosterAssignment do |f|
  f.player_id eric_staal.id
  f.fantasy_team_id 7
  f.keeper true
end
pchl_warriors_eric_staal = Factory(:pchl_warriors_eric_staal)

zach_parise = Player.find_by_beacon_id 3502
Factory.define :pchl_warriors_zach_parise, :class => RosterAssignment do |f|
  f.player_id zach_parise.id
  f.fantasy_team_id 7
  f.keeper true
end
pchl_warriors_zach_parise = Factory(:pchl_warriors_zach_parise)

evander_kane = Player.find_by_beacon_id 4656
Factory.define :pchl_warriors_evander_kane, :class => RosterAssignment do |f|
  f.player_id evander_kane.id
  f.fantasy_team_id 7
  f.minor_league true
  f.keeper true
end
pchl_warriors_evander_kane = Factory(:pchl_warriors_evander_kane)

patrick_berglund = Player.find_by_beacon_id 4545
Factory.define :pchl_warriors_patrick_berglund, :class => RosterAssignment do |f|
  f.player_id patrick_berglund.id
  f.fantasy_team_id 7
  f.minor_league true
  f.keeper true
end
pchl_warriors_patrick_berglund = Factory(:pchl_warriors_patrick_berglund)


dany_heatley = Player.find_by_beacon_id 912
Factory.define :pchl_drunk_dany_heatley, :class => RosterAssignment do |f|
  f.player_id dany_heatley.id
  f.fantasy_team_id 8
  f.keeper true
end
pchl_drunk_dany_heatley = Factory(:pchl_drunk_dany_heatley)

pavel_datsyuk = Player.find_by_beacon_id 294
Factory.define :pchl_drunk_pavel_datsyuk, :class => RosterAssignment do |f|
  f.player_id pavel_datsyuk.id
  f.fantasy_team_id 8
  f.keeper true
end
pchl_drunk_pavel_datsyuk = Factory(:pchl_drunk_pavel_datsyuk)

jason_spezza = Player.find_by_beacon_id 228
Factory.define :pchl_drunk_jason_spezza, :class => RosterAssignment do |f|
  f.player_id jason_spezza.id
  f.fantasy_team_id 8
  f.keeper true
end
pchl_drunk_jason_spezza = Factory(:pchl_drunk_jason_spezza)

ryan_getzlaf = Player.find_by_beacon_id 3623
Factory.define :pchl_drunk_ryan_getzlaf, :class => RosterAssignment do |f|
  f.player_id ryan_getzlaf.id
  f.fantasy_team_id 8
  f.keeper true
end
pchl_drunk_ryan_getzlaf = Factory(:pchl_drunk_ryan_getzlaf)

fabian_brunnstrom = Player.find_by_beacon_id 4498
Factory.define :pchl_drunk_fabian_brunnstrom, :class => RosterAssignment do |f|
  f.player_id fabian_brunnstrom.id
  f.fantasy_team_id 8
  f.minor_league true
  f.keeper true
end
pchl_drunk_fabian_brunnstrom = Factory(:pchl_drunk_fabian_brunnstrom)

shawn_matthias = Player.find_by_beacon_id 4353
Factory.define :pchl_drunk_shawn_matthias, :class => RosterAssignment do |f|
  f.player_id shawn_matthias.id
  f.fantasy_team_id 8
  f.minor_league true
  f.keeper true
end
pchl_drunk_shawn_matthias = Factory(:pchl_drunk_shawn_matthias)

### Role Assignments ###

Factory.define :pchl_commissioner_0910, :class => RoleAssignment do |f|
  f.user_id 31
  f.role_id 2
  f.fantasy_season_id 3
end
pchl_commissioner_0910 = Factory(:pchl_commissioner_0910)

Factory.define :pchl_commissioner_1011, :class => RoleAssignment do |f|
  f.user_id 31
  f.role_id 2
  f.fantasy_season_id 5
end
pchl_commissioner_1011 = Factory(:pchl_commissioner_1011)