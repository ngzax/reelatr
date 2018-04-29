user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Contact.create(first_name: 'Good', last_name: 'Prospect', nickname: 'GP', email: 'gp@gmail.com', birthdate: '1/1/1995', note: '1/10/2017')
Contact.create(first_name: 'Bad', last_name: 'Prospect', nickname: 'BP', email: 'bp@gmail.com', birthdate: '2/1/1995', note: "Didn't really seem too interested")
