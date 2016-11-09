# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

# Users
%w(jen jeff).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

# Parties
%w(brunch dinner).each do |name|
  next if Party.exists? name: name
  Party.create!(name: name,
                location: 'Boston',
                user: User.find_by(email: 'jen@jen.com'))
end

%w(holiday costume).each do |name|
  next if Party.exists? name: name
  Party.create!(name: name,
                location: 'Boston',
                user: User.find_by(email: 'jeff@jeff.com'))
end

# Lists
%w(drinks).each do |name|
  List.create!(name: name,
               party: Party.find_by(name: 'brunch'),
               user: User.find_by(email: 'jen@jen.com'))
end

%w(apps).each do |name|
  List.create!(name: name,
               party: Party.find_by(name: 'costume'),
               user: User.find_by(email: 'jeff@jeff.com'))
end

# Items
%w(beer martinis sangria mimosas).each do |content|
  Item.create!(content: content,
               list: List.find_by(name: 'drinks'),
               user: User.find_by(email: 'jen@jen.com'))
end

%w(wings chips salsa cheese).each do |content|
  Item.create!(content: content,
               list: List.find_by(name: 'apps'),
               user: User.find_by(email: 'jeff@jeff.com'))
end
