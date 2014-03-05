class AddCityAndGenderToUsers < ActiveRecord::Migration
  def change
  add_column :users, :city, :string
  add_column :users, :gender, :string
  end
end
