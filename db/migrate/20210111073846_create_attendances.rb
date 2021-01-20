class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.references :employee, null: false, foreign_key: true
      t.time :timein
      t.time :timeout
      t.string :remark

      t.timestamps
    end
  end
end
