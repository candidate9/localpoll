class AddIndexToConstituenciesOnOnsCode < ActiveRecord::Migration
  def change
    add_index :constituencies, :ons_code, :unique => true
  end
end
