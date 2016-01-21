class AddFieldToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :geburtsdatum, :date
  end
end
