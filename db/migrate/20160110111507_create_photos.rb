class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :image
      t.text :image_caption
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
