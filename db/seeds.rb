# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

return unless Rails.env.development?

ratings = ["very green", "green", "neutral", "not green"]

Segment.destroy_all
Industry.destroy_all
Occupation.destroy_all

ind1 = Industry.create!(name: "Other human resources provision")
ind2 = Industry.create!(name: "Water collection, treatment and supply")
ind3 = Industry.create!(name: "Management consultancy activities (other than financial management)")
ind4 = Industry.create!(name: "Landscape service activities")
ind5 = Industry.create!(name: "Other software publishing")
ind6 = Industry.create!(name: "Other professional, scientific and technical activities (not including environmental consultancy or quantity surveying) nec")
ind7 = Industry.create!(name: "Other financial service activities, except insurance and pension funding, (not including security dealing on own account and factoring) nec")

occ1 = Occupation.create!(
  name: "Ecologists",
  num_job_ads: 39,
  avg_num_skills: 19.20512821,
  prop_green_skills: 0.2394704686,
  green_timeshare: 57.1,
  green_topics_list: ['Wildlife', 'Energy engineering', 'Green research', 'Green policy', 'Biodiversity', 'Energy efficiency', 'Earth science', 'Environmental impact', 'Eco-tourism', 'Biodegradable', 'Conservation', 'Green communities', 'Pollution prevention', 'Energy', 'Forestry', 'Environmental science', 'Renewable energy', 'Biomass', 'Renewable', 'Atmospheric science', 'Aquaculture', 'Clean energy', 'Green legal issues', 'Weatherization', 'Sustainability', 'Land use planning', 'Eco-hacking', 'Climatology', 'Environmental remediation', 'Water resources', 'Green economy', 'Ecology', 'Environmental protection', 'Green recreation', 'Leadership in energy and environmental design (LEED)', 'Green advocacy', 'Green socioeconomic development', 'Agriculture', 'Green solutions', 'Energy trading', 'Environment', 'Naturalist', 'Sustainable communities', 'Green education', 'Natural pesticides', 'Green construction'],
  top_green_skills: [{'skill_name': 'conduct ecological surveys', 'skill_id': 'aeb400b6-d38c-45cc-9252-3c6983c614bb', 'num_job_ads': 24, 'prop_job_ads': 0.15894039735099338}, {'skill_name': 'ensure the safety of endangered species and protected areas', 'skill_id': 'e2bb641f-f647-4229-a48e-9a5ef3526c23', 'num_job_ads': 15, 'prop_job_ads': 0.09933774834437085}, {'skill_name': 'protect biodiversity', 'skill_id': 'ae6d655d-bbce-4701-ba04-d687cfa90eda', 'num_job_ads': 13, 'prop_job_ads': 0.08609271523178808}, {'skill_name': 'environmental engineering', 'skill_id': 'b1b118c4-3291-484e-b64d-6d51fd5da8b3', 'num_job_ads': 11, 'prop_job_ads': 0.0728476821192053}, {'skill_name': 'ecology', 'skill_id': 'a8429098-ddac-481b-91e7-688d021c092e', 'num_job_ads': 10, 'prop_job_ads': 0.06622516556291391}],
  top_not_green_skills: [{'skill_name': 'write work-related reports', 'skill_id': '918f5211-b99f-4b29-9a34-6e475583ef55', 'num_job_ads': 14, 'prop_job_ads': 0.048109965635738834}, {'skill_name': 'communication', 'skill_id': '15d76317-c71a-4fa2-aadc-2ecc34e627b7', 'num_job_ads': 12, 'prop_job_ads': 0.041237113402061855}, {'skill_name': 'demonstrate enthusiasm', 'skill_id': '22b7d99d-252f-4572-8e3c-438ea87607eb', 'num_job_ads': 10, 'prop_job_ads': 0.03436426116838488}, {'skill_name': 'coordinating activities with others', 'skill_id': 'S1.2.1', 'num_job_ads': 9, 'prop_job_ads': 0.030927835051546393}, {'skill_name': 'conduct land surveys', 'skill_id': '39e71107-3aa9-41a0-809c-edea477c968f', 'num_job_ads': 8, 'prop_job_ads': 0.027491408934707903}],
  green_overall_rating: 'mid-high',
  green_occupation_rating: 'high',
  green_skills_rating: 'high',
  green_industry_rating: 'mid',
  industries: [ind1, ind2, ind4, ind3, ind5])

occ2 = Occupation.create!(
  name: "Architects",
  num_job_ads: 56,
  avg_num_skills: 13.94642857,
  prop_green_skills: 0.02660133655,
  green_timeshare: 23.4,
  green_topics_list: ['Landscape architecture', 'Green solutions', 'Green economy', 'Sustainable communities', 'Green recreation', 'Leadership in energy and environmental design (LEED)', 'Land use planning', 'Sustainability', 'Green communities', 'Green construction'],
  top_green_skills: [{'skill_name': 'promote sustainability', 'skill_id': '469e19ed-a0bd-445a-ae2d-4ba9430e296b', 'num_job_ads': 4, 'prop_job_ads': 0.2}, {'skill_name': 'plan water resource development', 'skill_id': '4c5fed97-939f-4050-adc0-7adaf15065e5', 'num_job_ads': 3, 'prop_job_ads': 0.15}, {'skill_name': 'advise on nature conservation', 'skill_id': 'b34f8562-9fcc-4e58-bd1c-8088ebadd315', 'num_job_ads': 2, 'prop_job_ads': 0.1}, {'skill_name': 'develop management plans', 'skill_id': '0bca9840-478a-40fd-a6c3-c8cc923add98', 'num_job_ads': 2, 'prop_job_ads': 0.1}, {'skill_name': 'urban planning law', 'skill_id': '1f632076-fd9b-4b18-a9a2-b59a59181d3e', 'num_job_ads': 2, 'prop_job_ads': 0.1}],
  top_not_green_skills: [{'skill_name': 'demonstrate enthusiasm', 'skill_id': '22b7d99d-252f-4572-8e3c-438ea87607eb', 'num_job_ads': 23, 'prop_job_ads': 0.05515587529976019}, {'skill_name': 'communication', 'skill_id': '15d76317-c71a-4fa2-aadc-2ecc34e627b7', 'num_job_ads': 16, 'prop_job_ads': 0.03836930455635491}, {'skill_name': 'cloud technologies', 'skill_id': 'bd14968e-e409-45af-b362-3495ed7b10e0', 'num_job_ads': 12, 'prop_job_ads': 0.02877697841726619}, {'skill_name': 'think creatively', 'skill_id': 'c624c6a3-b0ba-4a31-a296-0d433fe47e41', 'num_job_ads': 11, 'prop_job_ads': 0.026378896882494004}, {'skill_name': 'create AutoCAD drawings', 'skill_id': '76415d7f-0fde-4364-b45f-5c044580d2aa', 'num_job_ads': 11, 'prop_job_ads': 0.026378896882494004}],
  green_overall_rating: 'low-mid',
  green_occupation_rating: 'high',
  green_skills_rating: 'mid',
  green_industry_rating: 'low',
  industries: [ind1, ind3, ind6, ind7]
)

occ3 = Occupation.create!(
  name: "UI and UX designers and researchers",
  num_job_ads: 38,
  avg_num_skills: 18.65789474,
  prop_green_skills: 0.0213461951,
  green_timeshare: 0,
  green_topics_list: ['Infrastructure'],
  top_green_skills: [{'skill_name': 'promote sustainability', 'skill_id': '469e19ed-a0bd-445a-ae2d-4ba9430e296b', 'num_job_ads': 4, 'prop_job_ads': 0.3333333333333333}, {'skill_name': 'environmental engineering', 'skill_id': 'b1b118c4-3291-484e-b64d-6d51fd5da8b3', 'num_job_ads': 2, 'prop_job_ads': 0.16666666666666666}, {'skill_name': 'advise on social responsibility and sustainability matters', 'skill_id': 'b2f05068-c409-43ec-ba58-b5dfe991ca5e', 'num_job_ads': 1, 'prop_job_ads': 0.08333333333333333}, {'skill_name': 'develop energy policy', 'skill_id': 'c4e9f0d0-bbdd-42d7-83a5-2c131f6d67c2', 'num_job_ads': 1, 'prop_job_ads': 0.08333333333333333}, {'skill_name': 'identify energy needs', 'skill_id': '96d901a6-c931-4e8d-b685-a47e1deaaa1b', 'num_job_ads': 1, 'prop_job_ads': 0.08333333333333333}],
  top_not_green_skills: [{'skill_name': 'Adobe Photoshop', 'skill_id': '14ced458-5f4b-495f-bd3d-9c240614bda0', 'num_job_ads': 15, 'prop_job_ads': 0.04297994269340974}, {'skill_name': 'SketchBook Pro', 'skill_id': '85038d57-1fdd-40de-b908-2c005545a8c3', 'num_job_ads': 13, 'prop_job_ads': 0.03724928366762178}, {'skill_name': 'communication', 'skill_id': '15d76317-c71a-4fa2-aadc-2ecc34e627b7', 'num_job_ads': 9, 'prop_job_ads': 0.025787965616045846}, {'skill_name': 'use creative suite software', 'skill_id': '1bc718b6-ed90-4a9d-9fa7-8cec928a4581', 'num_job_ads': 7, 'prop_job_ads': 0.02005730659025788}, {'skill_name': 'think creatively', 'skill_id': 'c624c6a3-b0ba-4a31-a296-0d433fe47e41', 'num_job_ads': 7, 'prop_job_ads': 0.02005730659025788}],
  green_overall_rating: 'low',
  green_occupation_rating: 'low',
  green_skills_rating: 'low',
  green_industry_rating: 'mid'
)
