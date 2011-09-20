class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end