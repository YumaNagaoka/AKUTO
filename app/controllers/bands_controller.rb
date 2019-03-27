class BandsController < ApplicationController
  def index
    @bands = Band.all.order(Arel.sql('created_at desc'))
  end

  def show
    @band = Band.find_by(id: params[:id])
  end

  def new
  end
  
  def create
    @band = Band.new(band_name: params[:name], number_of_people: params[:number_of_people], time: params[:time], member_1: params[:member_1], member_2: params[:member_2], member_3: params[:member_3])
    @band.save
    redirect_to("/bands/index")
  end
end
