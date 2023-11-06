class AddDescriptionToOccupations < ActiveRecord::Migration[7.0]
  def change
    add_column :occupations, :description, :text
    add_column :occupations, :median_min_annualised_salary, :integer
    add_column :occupations, :median_max_annualised_salary, :integer
  end
end
