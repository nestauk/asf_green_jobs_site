class AddRegionsTables < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name

      t.timestamps
    end

    create_table :locations do |t|
      t.references :occupation, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.decimal :percentage

      t.timestamps
    end
  end
end
