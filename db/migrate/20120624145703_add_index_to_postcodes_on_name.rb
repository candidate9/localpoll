class AddIndexToPostcodesOnName < ActiveRecord::Migration
  def change
    add_index :postcodes, :name, :unique => true
  end
end