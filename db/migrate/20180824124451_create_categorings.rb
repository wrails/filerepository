class CreateCategorings < ActiveRecord::Migration[5.2]
  def change
    create_table :categorings do |t|
      t.references :category, foreign_key: true
      t.references :fileshare, foreign_key: true

      t.timestamps
    end
  end
end
