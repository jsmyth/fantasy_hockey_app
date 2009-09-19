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
  f.name 'Project Watermelon'
end
pw = Factory(:pw, :user => User.find_by_login('testuser2'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :d12, :class => FantasyTeam do |f|
  f.name 'Dirty Dozen'
end
d12 = Factory(:d12, :user => User.find_by_login('testuser3'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :sb, :class => FantasyTeam do |f|
  f.name 'Strange Brew'
end
sb = Factory(:sb, :user => User.find_by_login('testuser4'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :windy, :class => FantasyTeam do |f|
  f.name 'Windy City Rumblers'
end
windy = Factory(:windy, :user => User.find_by_login('testuser5'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :warriors, :class => FantasyTeam do |f|
  f.name 'Warriors'
end
warriors = Factory(:warriors, :user => User.find_by_login('testuser6'), :fantasy_seasons => [fantasy_season_08_09_pchl, fantasy_season_09_10_pchl])

Factory.define :drunk, :class => FantasyTeam do |f|
  f.name 'Drunk Zamboni Drivers'
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

### Roster Assignments ###

sidney_crosby = Player.find_by_beacon_id 3490
Factory.define :pchl_shamrocks_sidney_crosby, :class => RosterAssignment do |f|
  f.player_id sidney_crosby.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_sidney_crosby = Factory(:pchl_shamrocks_sidney_crosby)

evgeni_malkin = Player.find_by_beacon_id 3652
Factory.define :pchl_shamrocks_evgeni_malkin, :class => RosterAssignment do |f|
  f.player_id evgeni_malkin.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_evgeni_malkin = Factory(:pchl_shamrocks_evgeni_malkin)

pavel_datsyuk = Player.find_by_beacon_id 294
Factory.define :pchl_shamrocks_pavel_datsyuk, :class => RosterAssignment do |f|
  f.player_id pavel_datsyuk.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_pavel_datsyuk = Factory(:pchl_shamrocks_pavel_datsyuk)

mike_green = Player.find_by_beacon_id 925
Factory.define :pchl_shamrocks_mike_green, :class => RosterAssignment do |f|
  f.player_id mike_green.id
  f.fantasy_team_id 1
  f.keeper true
end
pchl_shamrocks_mike_green = Factory(:pchl_shamrocks_mike_green)

bobby_ryan = Player.find_by_beacon_id 4270
Factory.define :pchl_shamrocks_bobby_ryan, :class => RosterAssignment do |f|
  f.player_id bobby_ryan.id
  f.fantasy_team_id 1
  f.minor_league true
  f.keeper true
end
pchl_shamrocks_bobby_ryan = Factory(:pchl_shamrocks_bobby_ryan)

kyle_turris = Player.find_by_beacon_id 4420
Factory.define :pchl_shamrocks_kyle_turris, :class => RosterAssignment do |f|
  f.player_id kyle_turris.id
  f.fantasy_team_id 1
  f.minor_league true
  f.keeper true
end
pchl_shamrocks_kyle_turris = Factory(:pchl_shamrocks_kyle_turris)

kris_versteeg = Player.find_by_beacon_id 4346
Factory.define :pchl_shamrocks_kris_versteeg, :class => RosterAssignment do |f|
  f.player_id kris_versteeg.id
  f.fantasy_team_id 1
  f.minor_league true
  f.keeper true
end
pchl_shamrocks_kris_versteeg = Factory(:pchl_shamrocks_kris_versteeg)

tj_oshie = Player.find_by_beacon_id 4547
Factory.define :pchl_shamrocks_tj_oshie, :class => RosterAssignment do |f|
  f.player_id tj_oshie.id
  f.fantasy_team_id 1
  f.minor_league true
  f.keeper true
end
pchl_shamrocks_tj_oshie = Factory(:pchl_shamrocks_tj_oshie)


jonathan_toews = Player.find_by_beacon_id 4262
Factory.define :pchl_thehammer_jonathan_toews, :class => RosterAssignment do |f|
  f.player_id jonathan_toews.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_jonathan_toews = Factory(:pchl_thehammer_jonathan_toews)

patrick_kane = Player.find_by_beacon_id 4265
Factory.define :pchl_thehammer_patrick_kane, :class => RosterAssignment do |f|
  f.player_id patrick_kane.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_patrick_kane = Factory(:pchl_thehammer_patrick_kane)

corey_perry = Player.find_by_beacon_id 3626
Factory.define :pchl_thehammer_corey_perry, :class => RosterAssignment do |f|
  f.player_id corey_perry.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_corey_perry = Factory(:pchl_thehammer_corey_perry)

simon_gagne = Player.find_by_beacon_id 183
Factory.define :pchl_thehammer_simon_gagne, :class => RosterAssignment do |f|
  f.player_id simon_gagne.id
  f.fantasy_team_id 2
  f.keeper true
end
pchl_thehammer_simon_gagne = Factory(:pchl_thehammer_simon_gagne)

steven_stamkos = Player.find_by_beacon_id 4457
Factory.define :pchl_thehammer_steven_stamkos, :class => RosterAssignment do |f|
  f.player_id steven_stamkos.id
  f.fantasy_team_id 2
  f.minor_league true
  f.keeper true
end
pchl_thehammer_steven_stamkos = Factory(:pchl_thehammer_steven_stamkos)

nikita_filatov = Player.find_by_beacon_id 4496
Factory.define :pchl_thehammer_nikita_filatov, :class => RosterAssignment do |f|
  f.player_id nikita_filatov.id
  f.fantasy_team_id 2
  f.minor_league true
  f.keeper true
end
pchl_thehammer_nikita_filatov = Factory(:pchl_thehammer_nikita_filatov)


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

torrey_mitchell = Player.find_by_beacon_id 4283
Factory.define :pchl_pw_torrey_mitchell, :class => RosterAssignment do |f|
  f.player_id torrey_mitchell.id
  f.fantasy_team_id 3
  f.minor_league true
  f.keeper true
end
pchl_pw_torrey_mitchell = Factory(:pchl_pw_torrey_mitchell)

blake_wheeler = Player.find_by_beacon_id 4430
Factory.define :pchl_pw_blake_wheeler, :class => RosterAssignment do |f|
  f.player_id blake_wheeler.id
  f.fantasy_team_id 3
  f.minor_league true
  f.keeper true
end
pchl_pw_blake_wheeler = Factory(:pchl_pw_blake_wheeler)

jeff_cowan = Player.find_by_beacon_id 331
Factory.define :pchl_pw_jeff_cowan, :class => RosterAssignment do |f|
  f.player_id jeff_cowan.id
  f.fantasy_team_id 3
  f.minor_league true
  f.keeper true
end
pchl_pw_jeff_cowan = Factory(:pchl_pw_jeff_cowan)


jarome_iginla = Player.find_by_beacon_id 411
Factory.define :pchl_d12_jarome_iginla, :class => RosterAssignment do |f|
  f.player_id jarome_iginla.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_jarome_iginla = Factory(:pchl_d12_jarome_iginla)

ilya_kovalchuk = Player.find_by_beacon_id 334
Factory.define :pchl_d12_ilya_kovalchuk, :class => RosterAssignment do |f|
  f.player_id ilya_kovalchuk.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_ilya_kovalchuk = Factory(:pchl_d12_ilya_kovalchuk)

alexander_semin = Player.find_by_beacon_id 622
Factory.define :pchl_d12_alexander_semin, :class => RosterAssignment do |f|
  f.player_id alexander_semin.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_alexander_semin = Factory(:pchl_d12_alexander_semin)

henrik_zetterberg = Player.find_by_beacon_id 309
Factory.define :pchl_d12_henrik_zetterberg, :class => RosterAssignment do |f|
  f.player_id henrik_zetterberg.id
  f.fantasy_team_id 4
  f.keeper true
end
pchl_d12_henrik_zetterberg = Factory(:pchl_d12_henrik_zetterberg)

zach_bogosian = Player.find_by_beacon_id 4480
Factory.define :pchl_d12_zach_bogosian, :class => RosterAssignment do |f|
  f.player_id zach_bogosian.id
  f.fantasy_team_id 4
  f.minor_league true
  f.keeper true
end
pchl_d12_zach_bogosian = Factory(:pchl_d12_zach_bogosian)

clay_wilson = Player.find_by_beacon_id 4411
Factory.define :pchl_d12_clay_wilson, :class => RosterAssignment do |f|
  f.player_id clay_wilson.id
  f.fantasy_team_id 4
  f.minor_league true
  f.keeper true
end
pchl_d12_clay_wilson = Factory(:pchl_d12_clay_wilson)

sergei_kostitsyn = Player.find_by_beacon_id 4340
Factory.define :pchl_d12_sergei_kostitsyn, :class => RosterAssignment do |f|
  f.player_id sergei_kostitsyn.id
  f.fantasy_team_id 4
  f.minor_league true
  f.keeper true
end
pchl_d12_sergei_kostitsyn = Factory(:pchl_d12_sergei_kostitsyn)


alex_ovechkin = Player.find_by_beacon_id 3495
Factory.define :pchl_sb_alex_ovechkin, :class => RosterAssignment do |f|
  f.player_id alex_ovechkin.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_alex_ovechkin = Factory(:pchl_sb_alex_ovechkin)

marian_hossa = Player.find_by_beacon_id 219
Factory.define :pchl_sb_marian_hossa, :class => RosterAssignment do |f|
  f.player_id marian_hossa.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_marian_hossa = Factory(:pchl_sb_marian_hossa)

chris_pronger = Player.find_by_beacon_id 541
Factory.define :pchl_sb_chris_pronger, :class => RosterAssignment do |f|
  f.player_id chris_pronger.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_chris_pronger = Factory(:pchl_sb_chris_pronger)

joe_pavelski = Player.find_by_beacon_id 4136
Factory.define :pchl_sb_joe_pavelski, :class => RosterAssignment do |f|
  f.player_id joe_pavelski.id
  f.fantasy_team_id 5
  f.keeper true
end
pchl_sb_joe_pavelski = Factory(:pchl_sb_joe_pavelski)

alex_goligoski = Player.find_by_beacon_id 4402
Factory.define :pchl_sb_alex_goligoski, :class => RosterAssignment do |f|
  f.player_id alex_goligoski.id
  f.fantasy_team_id 5
  f.minor_league true
  f.keeper true
end
pchl_sb_alex_goligoski = Factory(:pchl_sb_alex_goligoski)

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

olli_jokinen = Player.find_by_beacon_id 262
Factory.define :pchl_windy_olli_jokinen, :class => RosterAssignment do |f|
  f.player_id olli_jokinen.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_olli_jokinen = Factory(:pchl_windy_olli_jokinen)

dion_phaneuf = Player.find_by_beacon_id 3661
Factory.define :pchl_windy_dion_phaneuf, :class => RosterAssignment do |f|
  f.player_id dion_phaneuf.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_dion_phaneuf = Factory(:pchl_windy_dion_phaneuf)

anze_kopitar = Player.find_by_beacon_id 4033
Factory.define :pchl_windy_anze_kopitar, :class => RosterAssignment do |f|
  f.player_id anze_kopitar.id
  f.fantasy_team_id 6
  f.keeper true
end
pchl_windy_anze_kopitar = Factory(:pchl_windy_anze_kopitar)

devon_setoguchi = Player.find_by_beacon_id 4316
Factory.define :pchl_windy_devon_setoguchi, :class => RosterAssignment do |f|
  f.player_id devon_setoguchi.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_devon_setoguchi = Factory(:pchl_windy_devon_setoguchi)

derick_brassard = Player.find_by_beacon_id 4354
Factory.define :pchl_windy_derick_brassard, :class => RosterAssignment do |f|
  f.player_id derick_brassard.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_derick_brassard = Factory(:pchl_windy_derick_brassard)

david_tanabe = Player.find_by_beacon_id 562
Factory.define :pchl_windy_david_tanabe, :class => RosterAssignment do |f|
  f.player_id david_tanabe.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_david_tanabe = Factory(:pchl_windy_david_tanabe)

jan_hejda = Player.find_by_beacon_id 4098
Factory.define :pchl_windy_jan_hejda, :class => RosterAssignment do |f|
  f.player_id jan_hejda.id
  f.fantasy_team_id 6
  f.minor_league true
  f.keeper true
end
pchl_windy_jan_hejda = Factory(:pchl_windy_jan_hejda)


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

rick_nash = Player.find_by_beacon_id 319
Factory.define :pchl_warriors_rick_nash, :class => RosterAssignment do |f|
  f.player_id rick_nash.id
  f.fantasy_team_id 7
  f.keeper true
end
pchl_warriors_rick_nash = Factory(:pchl_warriors_rick_nash)

eric_staal = Player.find_by_beacon_id 247
Factory.define :pchl_warriors_eric_staal, :class => RosterAssignment do |f|
  f.player_id eric_staal.id
  f.fantasy_team_id 7
  f.keeper true
end
pchl_warriors_eric_staal = Factory(:pchl_warriors_eric_staal)

drew_doughty = Player.find_by_beacon_id 4510
Factory.define :pchl_warriors_drew_doughty, :class => RosterAssignment do |f|
  f.player_id drew_doughty.id
  f.fantasy_team_id 7
  f.minor_league true
  f.keeper true
end
pchl_warriors_drew_doughty = Factory(:pchl_warriors_drew_doughty)

claude_giroux = Player.find_by_beacon_id 4394
Factory.define :pchl_warriors_claude_giroux, :class => RosterAssignment do |f|
  f.player_id claude_giroux.id
  f.fantasy_team_id 7
  f.minor_league true
  f.keeper true
end
pchl_warriors_claude_giroux = Factory(:pchl_warriors_claude_giroux)

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

johan_franzen = Player.find_by_beacon_id 3639
Factory.define :pchl_drunk_johan_franzen, :class => RosterAssignment do |f|
  f.player_id johan_franzen.id
  f.fantasy_team_id 8
  f.keeper true
end
pchl_drunk_johan_franzen = Factory(:pchl_drunk_johan_franzen)

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