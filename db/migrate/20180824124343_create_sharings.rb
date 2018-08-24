class CreateSharings < ActiveRecord::Migration[5.2]
  def change
    create_table :sharings do |t|
      t.references :user, foreign_key: true
      t.references :fileshare, foreign_key: true

      t.timestamps
    end
  end
end
