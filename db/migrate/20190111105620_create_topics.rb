class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.integer :image_cash
      t.string :description
      t.integer :action, default:0
      t.integer :price, default:0
      t.integer :area, default:0

      t.timestamps
    end
  end
end
