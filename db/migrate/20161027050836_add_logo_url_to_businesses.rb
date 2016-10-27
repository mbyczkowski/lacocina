class AddLogoUrlToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :logo_url, :string

    add_index :businesses, :logo_url
  end
end
