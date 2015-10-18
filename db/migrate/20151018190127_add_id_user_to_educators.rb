class AddIdUserToEducators < ActiveRecord::Migration
  def change
    add_column :educators, :user_id, :integer
  end
end
