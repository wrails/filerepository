class CreateFileshares < ActiveRecord::Migration[5.2]
  def change
    create_table :fileshares do |t|
      t.string :category
      t.string :title
      t.string :keywords
      t.string :description
      t.string :file
      t.string :image

      t.timestamps
    end
  end
end
