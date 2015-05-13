require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sport.create(
  [{name: 'Football', gender: "m"} , {name: 'Soccer'} , {name: 'Hockey'} , {name: 'Volleyball'}])
x = 1
CSV.foreach("vendor/data/postscndryunivsrvy2013dirinfo.csv", encoding: 'iso-8859-1:utf-8', headers: true) do |row|
  School.create({name: row["INSTNM"], city: row["CITY"], state: row["STABBR"], address: row["ADDR"], zip: row["ZIP"]})
  x += 1;
  break if x > 100
end