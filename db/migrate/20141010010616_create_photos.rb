class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user
      t.string :image_url
      t.string :caption
      t.text :description
    end
  end
end
