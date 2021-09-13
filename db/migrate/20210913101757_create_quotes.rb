class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :author
      t.text :quote
      t.integer :provider_id

      t.timestamps

      t.index :provider_id, unique: true
    end
  end
end
