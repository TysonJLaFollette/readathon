class Undorename < ActiveRecord::Migration[5.0]
  def change
	rename_table :books, :bookitems
  end
end
