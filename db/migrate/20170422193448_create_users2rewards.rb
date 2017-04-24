class CreateUsers2rewards < ActiveRecord::Migration[5.0]
  def change
    create_table :users2rewards do |t|
      t.integer :userid
      t.integer :rewardid

      t.timestamps
    end
  end
end
