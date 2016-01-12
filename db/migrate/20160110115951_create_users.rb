class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.attachment :profile_image

      t.timestamps null: false
    end
  end
end
