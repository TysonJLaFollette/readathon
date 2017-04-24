class CreateUsers2goals < ActiveRecord::Migration[5.0]
  def change
    create_table :users2goals do |t|
      t.integer :userid
      t.integer :goalid

      t.timestamps
    end
  end
end
