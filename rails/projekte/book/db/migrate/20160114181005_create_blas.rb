class CreateBlas < ActiveRecord::Migration
  def change
    create_table :blas do |t|
      t.integer :anzahl

      t.timestamps null: false
    end
  end
end
