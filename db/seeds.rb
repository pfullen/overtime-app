100.times do |post|
		Post.create!(date: Date.today, rationale: "#{post} rationale content",
		overtime_request: 2.5,  user_id: 1)
	end

puts "Posts have been created"


@user = User.create!(email: "test@test.com",
 password: "asdfasdf",
			 password_confirmation: "asdfasdf",
			 first_name: "John",
			 last_name: "Snow" ,
			 phone: "4049318079")


AdminUser.create!(email: "admin@test.com",
 			password: "asdfasdf",
			password_confirmation: "asdfasdf", 
 			first_name: "Admin",
 			last_name: "User",
  			phone: "4049318079")

  
puts "One user created"