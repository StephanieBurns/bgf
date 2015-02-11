class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :questions, :name
  end
end
