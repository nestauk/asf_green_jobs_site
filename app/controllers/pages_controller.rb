class PagesController < ApplicationController
  def compare
    @q = Occupation.ransack(params[:q])
    @occupations = @q.result
  end
end
