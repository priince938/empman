class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.date :holiday_date

      t.timestamps
    end
  end
end
