class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.string :ons_code

      t.timestamps
    end
  end
end
