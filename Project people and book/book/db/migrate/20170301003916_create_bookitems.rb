class CreateBookitems < ActiveRecord::Migration[5.0]
  def change
    create_table :bookitems do |t|
      t.string :title
      t.string :author
      t.string :pages

      t.timestamps
    end
  end
end
