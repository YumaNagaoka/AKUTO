class BandsController < ApplicationController
  def index
    @bands = Band.all.order(Arel.sql('created_at desc'))
  end

  def show
    @band = Band.find_by(id: params[:id])
    @participants = Participant.where(band_id: params[:id])
  end

  def new
  end
  
  def create
    #bandテーブルにバンド名と人数と所要時間を保存する
    @band = Band.new(band_name: params[:name], number_of_people: params[:number_of_people], time: params[:time])
    @band.save
    #participantテーブルにメンバーの名前とバンドidを保存する
    member = params[:member]
    id = Band.last.id
    params[:number_of_people].to_i.times do |i|   
      @participant = Participant.new(name: member[i], band_id: id)
      @participant.save
    end
    redirect_to("/bands/new")
  end
end
