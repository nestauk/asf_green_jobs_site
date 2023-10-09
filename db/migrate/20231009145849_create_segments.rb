class CreateSegments < ActiveRecord::Migration[7.0]
  def change
    create_table :segments do |t|
      t.references :industry, null: false, foreign_key: true
      t.references :occupation, null: false, foreign_key: true
      t.integer :count
      t.decimal :percentage

      t.timestamps
    end
  end
end
