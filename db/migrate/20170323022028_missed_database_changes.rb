class MissedDatabaseChanges < ActiveRecord::Migration[5.0]
  def change
	change_column :bookitems, :pages, :integer
	rename_table :bookitems, :books
  end
end
