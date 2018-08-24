class CreateKeywordings < ActiveRecord::Migration[5.2]
  def change
    create_table :keywordings do |t|
      t.references :keyword, foreign_key: true
      t.references :fileshare, foreign_key: true

      t.timestamps
    end
  end
end
