require 'rails_helper'

describe 'navigate' do
	describe 'index' do 
		it 'can be reached successfully' do
			visit post1s_path
			expect(page.status_code).to eq(200)
		end

		it 'has a title of Posts' do
			visit post1s_path
			expect(page).to have_content(/Posts/)

end
end

	describe 'creation ' do
		before do
				user = User.create(email: "test@test.com", password: "asdfasdf", 
  			password_confirmation: "asdfasdf", first_name: "Peter", last_name: "Fullen")
				login_as(user, :scope => :user)
					visit new_post1_path
				end

		it 'has a new form that can be reached' do
		
			expect(page.status_code).to eq(200)
		end

		it 'can be created from new form page' do
			fill_in 'post1[date]', with: Date.today
			fill_in 'post1[rationale]', with: "HELLO"

			click_on "Save" 

			expect(page).to have_content("HELLO")
		end

		it 'will have a user associated it' do
			fill_in 'post1[date]', with: Date.today
			fill_in 'post1[rationale]', with: "User Association"
			click_on "Save"

			expect(User.last.post1s.last.rationale).to.eq("User Association")
		end
	end
end