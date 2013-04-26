# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Albert Einstein', email:'einstein@gmail.com', password:'apple', password_confirmation:'apple')
User.create(name: 'Nikolai Tesla', email:'tesla@gmail.com', password:'banana', password_confirmation:'banana')
User.create(name: 'Alessandro Volta', email:'volta@gmail.com', password:'tangelo', password_confirmation:'tangelo')
User.create(name: 'Edwin Hubble', email:'hubble@gmail.com', password:'pineapple', password_confirmation:'pineapple')
User.create(name: 'Galileo Galilei', email:'galileo@gmail.com', password:'mango', password_confirmation:'mango')


