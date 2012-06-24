class CreatePostcodes < ActiveRecord::Migration
  def change
    create_table :postcodes do |t|
      t.string :name
      t.integer :constituency_id

      t.timestamps
    end
  end
end
