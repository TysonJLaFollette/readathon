class AddDatabaseTestData < ActiveRecord::Migration[5.0]
  def change
	change_column :users, :student_or_teacher, :boolean
	change_column :users, :age, :integer
	change_column :users, :pages_read, :integer
	change_column :users, :books_read, :integer

	
	change_table :users do |t|
		t.rename :student_or_teacher, :is_teacher
		t.remove :book_list
	end
	
	
  end
end
