class OccupationsController < ApplicationController
  def home
    @occupations = Occupation.all
  end

  def top
    if params[:industry]
      @occupations = Occupation.joins(:industries).where('industries.id': params[:industry]).order(green_timeshare: :desc)
    else
      @occupations = Occupation.order(green_timeshare: :desc)
    end
  end

  def show
    @occupation = Occupation.find_by(id: params[:id])
  end
end
