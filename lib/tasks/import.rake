require 'csv'

namespace :import do
  desc "Import data from a remote CSV, usage: `rake import:data'[http://...]'`"
  task :data, [:url] => [:environment] do |_task, args|
    raise 'No url supplied' unless args.url.present?

    CSV.parse(URI.parse(args.url).open, headers: true) do |row|

      occ = Occupation.find_or_initialize_by(name: row["SOC_2020_EXT_name"])

      occ.avg_num_skills = row["average_num_skills"]
      occ.green_industry_rating = row["ind_greenness"] || "unknown"
      occ.green_occupation_rating = row["occ_greenness"] || "unknown"
      occ.green_overall_rating = row["greenness_score"] || "unknown"
      occ.green_skills_rating = row["skills_greenness"] || "unknown"
      occ.green_timeshare = row["occ_timeshare"] || 0
      occ.green_topics_count = row["occ_topics"]
      occ.num_job_ads = row["num_job_ads"]
      occ.prop_green_skills = row["average_prop_green_skills"]
      occ.top_green_skills = JSON.parse(row["top_5_green_skills"])
      occ.top_not_green_skills = JSON.parse(row["top_5_not_green_skills"])

      occ.save!

      JSON.parse(row["top_5_sics"]).each do |i|
        ind = Industry.find_or_create_by!(name: i["sic_name"], sic_code: i["sic_id"])

        seg = Segment.find_or_initialize_by(occupation: occ, industry: ind)
        seg.count = i["num_job_ads"]
        seg.percentage = i["prop_job_ads"]
        seg.save!
      end
    end
  end
end
