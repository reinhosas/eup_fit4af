class CreateWorkedHours < ActiveRecord::Migration
  def change
    create_table :worked_hours do |t|
      t.string :project_id
      t.string :employee_id
      t.string :hours

      t.timestamps null: false
    end
  end
end
