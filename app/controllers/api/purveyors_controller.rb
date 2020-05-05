class Api::PurveyorsController < ApplicationController

  def index 
    purveyors = Purveyor.all

    render json: purveyors
  end

  def show
    purveyor = Purveyor.find(params[:id])
    
    render json: purveyor
  end
end
