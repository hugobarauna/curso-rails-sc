class CreateJobOffers < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.string :title
      t.text :description
      t.references :company

      t.timestamps
    end
  end
end
