Group.delete_all

group1 = Group.create!(name: 'default', caller_id: '555-1000', voicemail: 'email', call_record: 'no', out_of_service: '555-1000')


Member.delete_all

group1.members.create!(uid: 'mhaase', first_name: 'mark', last_name: 'haase', service: 'uc power', dept: 'product', location: 'cambridge', extension: 6209)

group1.members.create!(uid: 'jsmith', first_name: 'john', last_name: 'smith', service: 'uc core', dept: 'sales', location: 'cambridge', extension: 6210)

User.create!(email: 'tom@foo.com', password: 'password', password_confirmation: 'password');
