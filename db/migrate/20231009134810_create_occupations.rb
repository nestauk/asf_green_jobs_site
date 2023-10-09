class CreateOccupations < ActiveRecord::Migration[7.0]
  def change
    create_table :occupations do |t|
      t.string :name
      t.decimal :green_timeshare
      t.integer :green_topics_count
      t.jsonb :green_topics_list
      t.jsonb :top_green_skills
      t.jsonb :top_not_green_skills
      t.string :green_overall_rating
      t.string :green_occupation_rating
      t.string :green_skills_rating
      t.string :green_industry_rating

      t.timestamps
    end
  end
end
