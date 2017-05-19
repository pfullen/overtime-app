100.times do |post|
	Post1.create!(date: Date.today, rationale: "#{post} rationale content")
end

puts "Posts have been created"


