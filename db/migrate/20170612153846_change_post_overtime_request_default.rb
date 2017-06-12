class ChangePostOvertimeRequestDefault < ActiveRecord::Migration[5.0]
  def change
  	   change_column :posts, :overtime_request, :decimal, default: 0.0
  end
end
