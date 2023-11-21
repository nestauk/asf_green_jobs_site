class AddGhgDataToOccupations < ActiveRecord::Migration[7.0]
  def change
    add_column :occupations, :average_ind_perunit_ghg, :decimal
    add_column :occupations, :average_ind_prop_hours, :decimal
    add_column :occupations, :average_ind_prop_workers, :decimal
  end
end
