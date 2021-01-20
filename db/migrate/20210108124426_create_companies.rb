class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :domain_name
      t.string :address
      t.time :intime
      t.time :outtime

      t.timestamps
    end
  end
end
