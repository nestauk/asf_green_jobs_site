# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

return unless Rails.env.development?

ratings = ["very green", "green", "neutral", "not green"]

Occupation.destroy_all

Occupation.create!(
  name: "Ecologists",
  green_timeshare: 57.1,
  green_topics_count: 46,
  green_topics_list: ['Eco-hacking', 'Ecology', 'Conservation', 'Land use planning', 'Renewable energy', 'Green construction', 'Sustainable communities', 'Energy', 'Green socioeconomic development', 'Environmental science', 'Green education', 'Environmental remediation', 'Biodegradable', 'Biodiversity', 'Clean energy', 'Green solutions', 'Green policy', 'Naturalist', 'Environment', 'Environmental protection', 'Green research', 'Green economy', 'Leadership in energy and environmental design (LEED)', 'Environmental impact', 'Green communities', 'Natural pesticides', 'Pollution prevention', 'Green recreation', 'Water resources', 'Eco-tourism', 'Green advocacy', 'Energy trading', 'Renewable', 'Wildlife', 'Atmospheric science', 'Forestry', 'Earth science', 'Biomass', 'Energy efficiency', 'Energy engineering', 'Agriculture', 'Sustainability', 'Weatherization', 'Climatology', 'Aquaculture', 'Green legal issues'],
  top_green_skills: [
    { name: "conduct ecological surveys", count: 24, percentage: 0.15894039735099338 },
    { name: "ensure the safety of endangered species and protected areas", count: 15, percentage: 0.09933774834437085 },
    { name: "protect biodiversity", count: 13, percentage: 0.08609271523178808 },
    { name: "environmental engineering", count: 11, percentage: 0.0728476821192053 },
    { name: "ecology", count: 10, percentage: 0.06622516556291391 }
  ],
  top_not_green_skills: [
    { name: "write work-related reports", count: 14, percentage: 0.048109965635738834 },
    { name: "communication", count: 12, percentage: 0.041237113402061855 },
    { name: "demonstrate enthusiasm", count: 10, percentage: 0.03436426116838488 },
    { name: "coordinating activities with others", count: 9, percentage: 0.030927835051546393 },
    { name: "conduct land surveys", count: 8, percentage: 0.027491408934707903 },
  ],
  green_overall_rating: ratings.sample,
  green_occupation_rating: "#{ratings.sample} occupation",
  green_skills_rating: "#{ratings.sample} skills",
  green_industry_rating: "#{ratings.sample} industry"
)

Occupation.create!(
  name: "Architects",
  green_timeshare: 23.4,
  green_topics_count: 10,
  green_topics_list: ['Green recreation', 'Land use planning', 'Sustainable communities', 'Green construction', 'Sustainability', 'Green economy', 'Landscape architecture', 'Leadership in energy and environmental design (LEED)', 'Green communities', 'Green solutions'],
  top_green_skills: [
    { name: "promote sustainability", count: 4, percentage: 0.2 },
    { name: "plan water resource development", count: 3, percentage: 0.15 },
    { name: "advise on nature conservation", count: 2, percentage: 0.1 },
    { name: "develop management plans", count: 2, percentage: 0.1 },
    { name: "urban planning law", count: 2, percentage: 0.1 }
  ],
  top_not_green_skills: [
    { name: "demonstrate enthusiasm", count: 23, percentage: 0.05515587529976019 },
    { name: "communication", count: 16, percentage: 0.03836930455635491 },
    { name: "cloud technologies", count: 12, percentage: 0.02877697841726619 },
    { name: "think creatively", count: 11, percentage: 0.026378896882494004 },
    { name: "create AutoCAD drawings", count: 11, percentage: 0.026378896882494004 }
  ],
  green_overall_rating: ratings.sample,
  green_occupation_rating: "#{ratings.sample} occupation",
  green_skills_rating: "#{ratings.sample} skills",
  green_industry_rating: "#{ratings.sample} industry"
)

Occupation.create!(
  name: "Lifeguards",
  green_timeshare: 0,
  green_topics_count: 1,
  green_topics_list: ['Green recreation'],
  top_green_skills: [
    { name: "corporate social responsibility", count: 1, percentage: 1 }
  ],
  top_not_green_skills: [
    { name: "demonstrate enthusiasm", count: 3, percentage: 0.12 },
    { name: "satisfy customers", count: 2, percentage: 0.08 },
    { name: "interact with an audience", count: 2, percentage: 0.08 },
    { name: "maintain relationship with customers", count: 2, percentage: 0.08 },
    { name: "advise on public relations", count: 1, percentage: 0.04 },
  ],
  green_overall_rating: ratings.sample,
  green_occupation_rating: "#{ratings.sample} occupation",
  green_skills_rating: "#{ratings.sample} skills",
  green_industry_rating: "#{ratings.sample} industry"
)
