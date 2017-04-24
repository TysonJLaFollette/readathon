class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :text
      t.boolean :is_class

      t.timestamps
    end
  end
end
