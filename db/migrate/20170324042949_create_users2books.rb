class CreateUsers2books < ActiveRecord::Migration[5.0]
  def change
    create_table :users2books do |t|
      t.integer :userid
      t.integer :bookid

      t.timestamps
    end
  end
end
