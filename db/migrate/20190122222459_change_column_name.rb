class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
		rename_column :likes, :likes, :points
  end
end
