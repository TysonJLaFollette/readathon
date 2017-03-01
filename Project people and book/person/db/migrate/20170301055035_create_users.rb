class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :student_or_teacher
      t.string :age
      t.string :pages_read
      t.string :books_read
      t.string :reading_level
      t.text :book_list

      t.timestamps
    end
  end
end
