# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Prospect.create(first_name: 'Good', last_name: 'Prospect', nickname: 'GP', email: 'gp@gmail.com', birthdate: '1/1/1995', note: '1/10/2017')
Prospect.create(first_name: 'Bad', last_name: 'Prospect', nickname: 'BP', email: 'bp@gmail.com', birthdate: '2/1/1995', note: "Didn't really seem too interested")
