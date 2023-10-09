class CreateIndustry < ActiveRecord::Migration[7.0]
  def change
    create_table :industries do |t|
      t.string :name
      t.string :sic_code

      t.timestamps
    end
  end
end
