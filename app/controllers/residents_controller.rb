class ResidentsController < ApplicationController
  def index 
    @residents = Resident.all
    @age = Resident.average(:age)
  end

  def show
    @resident = Resident.find(params[:id])
  end
end