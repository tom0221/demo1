class CreateImageComments < ActiveRecord::Migration[5.2]
  def change
    create_table :image_comments do |t|
      t.text :memo
      t.integer :user_id
      t.integer :image_id

      t.timestamps
    end
  end
end
