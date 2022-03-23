class AddUsersImageNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users , :image_name , true
  end
end
