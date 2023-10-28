class ResidentsController < ApplicationController
  def index 
    @residents = Resident.all
    require 'pry'; binding.pry
  end
end