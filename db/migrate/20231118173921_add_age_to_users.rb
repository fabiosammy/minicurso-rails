class AddAgeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :age, :integer
    add_index :users, :name, unique: true
  end
end
