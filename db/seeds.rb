User.where(email: 'john@example.com').first_or_initialize.tap do |user|
	user.first_name = 'John'
	user.last_name = 'Doe'
	user.password = 'password'
	user.save!
 end
 
 User.where(email: 'admin@example.com').first_or_initialize.tap do |user|
	user.first_name = 'Jane'
	user.last_name = 'Doe'
	user.password = 'password'
	user.admin = true
	user.save!
 end
