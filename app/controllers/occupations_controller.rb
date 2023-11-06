class OccupationsController < ApplicationController
  def home
    @occupations = Occupation.all
  end

  def index
    @q = Occupation.ransack(params[:q])
    @occupations = @q.result(distinct: true)
                     .order(green_timeshare: :desc, prop_green_skills: :desc)
                     .page(params[:page])

    respond_to do |format|
      format.html
      format.json
      format.csv { send_data Occupation.to_csv(@occupations), filename: "green_jobs_data.csv"}
    end
  end

  def show
    @occupation = Occupation.find_by(id: params[:id])

    respond_to do |format|
      format.html
      format.json
      format.csv { send_data Occupation.to_csv([@occupation]), filename: "green_jobs_data.csv"}
    end
  end
end
