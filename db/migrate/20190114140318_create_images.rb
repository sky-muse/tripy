class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :topic_id
      t.string :image

      t.timestamps
    end
  end
end