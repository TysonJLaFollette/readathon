class CreateDualbooklists < ActiveRecord::Migration[5.0]
  def change
    create_table :dualbooklists do |t|
      t.integer :studentone
      t.integer :studenttwo

      t.timestamps
    end
  end
end
