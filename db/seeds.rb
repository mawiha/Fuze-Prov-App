# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Member.delete_all

member1 = Member.create!(uid: 'mhaase', first_name: 'mark', last_name: 'haase', service: 'uc power', dept: 'product', location: 'cambridge', extension: 6209)


