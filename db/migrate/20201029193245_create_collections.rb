class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.integer :color_id
      t.integer :room_id

      t.timestamps
    end
  end
end
