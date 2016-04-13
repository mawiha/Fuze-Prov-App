# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.delete_all

group1 = Group.create!(name: 'default', caller_id: '555-1000', voicemail: 'email', call_record: 'no', out_of_service: '555-1000')


Member.delete_all

member1 = Member.create!(uid: 'mhaase', first_name: 'mark', last_name: 'haase', service: 'uc power', dept: 'product', location: 'cambridge', extension: 6209, group:'default')

member2 = Member.create!(uid: 'jsmith', first_name: 'john', last_name: 'smith', service: 'uc core', dept: 'sales', location: 'cambridge', extension: 6210, group: 'default')

