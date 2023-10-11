class OccupationsController < ApplicationController
  def home
    @occupations = Occupation.all
  end

  def index
    @q = Occupation.ransack(params[:q])
    @occupations = @q.result(distinct: true)
                     .order(green_timeshare: :desc, prop_green_skills: :desc)
                     .page(params[:page])
  end

  def show
    @occupation = Occupation.find_by(id: params[:id])
  end
end
