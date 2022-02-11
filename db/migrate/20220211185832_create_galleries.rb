class CreateGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :photo, :null => false
      t.text :caption

      t.timestamps
    end
  end
end
