#!/usr/bin/env ruby

ENV['RAILS_ENV'] = ARGV.first || ENV['RAILS_ENV'] || 'development'
require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")



# Roles

Factory.define :user_role, :class => Role do |r|
  r.name 'User'
end
user_role = Factory(:user_role)

Factory.define :commissioner_role, :class => Role do |r|
  r.name 'Commissioner'
end
commissioner_role = Factory(:commissioner_role)

Factory.define :officer_role, :class => Role do |r|
  r.name 'Officer'
end
officer_role = Factory(:officer_role)


# Operations

Factory.define :add, :class => Operation do |o|
  o.name 'Add'
end
add = Factory(:add)

Factory.define :drop, :class => Operation do |o|
  o.name 'Drop'
end
drop = Factory(:drop)

Factory.define :draft, :class => Operation do |o|
  o.name 'Draft'
end
draft = Factory(:draft)

Factory.define :trade, :class => Operation do |o|
  o.name 'Trade'
end
trade = Factory(:trade)

# Positions

Factory.define :skater, :class => Position do |p|
  p.name 'Skater'
  p.abbreviation 'S'
end
skater = Factory(:skater)

Factory.define :forward, :class => Position do |p|
  p.name 'Forward'
  p.abbreviation 'F'
end
forward = Factory(:forward)

Factory.define :defense, :class => Position do |p|
  p.name 'Defense'
  p.abbreviation 'D'
end
defense = Factory(:defense)

Factory.define :center, :class => Position do |p|
  p.name 'Center'
  p.abbreviation 'C'
end
center = Factory(:center)

Factory.define :left_wing, :class => Position do |p|
  p.name 'Left Wing'
  p.abbreviation 'LW'
end
left_wing = Factory(:left_wing)

Factory.define :right_wing, :class => Position do |p|
  p.name 'Right Wing'
  p.abbreviation 'RW'
end
right_wing = Factory(:right_wing)

Factory.define :goalie, :class => Position do |p|
  p.name 'Goalie'
  p.abbreviation 'G'
end
goalie = Factory(:goalie)