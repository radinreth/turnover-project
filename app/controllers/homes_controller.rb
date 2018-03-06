class HomesController < ApplicationController
  def index
    @employees ||= Employee.joins(:employments).select('*').page(params[:page]).per(20)
  end
end
