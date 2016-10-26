class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.boolean :offers_catering, null: false
      t.string :slug, null: false
      t.string :website, null: false
    end

    add_index :businesses, :offers_catering
    add_index :businesses, :slug, unique: true
  end
end
