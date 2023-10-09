class OccupationsController < ApplicationController
  def home
    @occupations = Occupation.all
  end

  def top
    @occupations = Occupation.order(green_timeshare: :desc)
  end

  def show
    @occupation = Occupation.find_by(id: params[:id])
  end
end
