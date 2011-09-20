class AddUsernameToCompanies < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.string "username"
    end
  end
end
