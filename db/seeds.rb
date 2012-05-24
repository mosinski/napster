# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Fortune.create! :wykonawca => 'Moby',:tytul => 'Lift Me Up',:album => 'Wait',:tekst => 'lalalalalalall siusisdasndoperw'
User.create :username => 'admin',:email => 'matwb@ug.edu.pl',:crypted_password=> '123456', :password_salt => '123456'
