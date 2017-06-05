#100.times do |post|
#	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: 1)
#end

#puts "Posts have been created"


@user = User.create!(email: "test@test.com", password: "asdfasdf",
			 password_confirmation: "asdfasdf", first_name: "John", last_name: "Snow" )
puts "One user created"