class AddUsersToPost1s < ActiveRecord::Migration[5.0]
  def change
    add_reference :post1s, :user, foreign_key: true
  end
end
