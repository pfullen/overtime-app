class CreatePost1s < ActiveRecord::Migration[5.0]
  def change
    create_table :post1s do |t|
      t.date :date
      t.text :rationale

      t.timestamps
    end
  end
end
