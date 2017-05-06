class HomeController < ApplicationController
  def index
  end

  def house_list
      @houses = House.all
  end

  def house_detail
    @house = House.find(params[:id])
  end

end