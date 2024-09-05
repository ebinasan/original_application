class RoadStationsController < ApplicationController

  def index
    @road_stations = RoadStation.includes(:user)
  end

  def new
    @road_station = RoadStation.new
  end
    
  def create
    @road_station = current_user.road_stations.new(road_station_params) # ユーザーIDを自動で設定
    if @road_station.save
      redirect_to road_stations_path, notice: "道の駅の登録に成功しました"
    else
      Rails.logger.debug(@road_station.errors.full_messages)
      flash.now[:danger] = "道の駅の登録に失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @road_station = RoadStation.find(params[:id])
  end

  def edit
    @road_station = RoadStation.find(params[:id])
  end

  def update
    @road_station = RoadStation.find(params[:id])
    if @road_station.update(road_station_params)
      redirect_to road_station_path(@road_station), notice: "道の駅の更新に成功しました"
    else
      Rails.logger.debug(@road_station.errors.full_messages)
      flash.now[:danger] = "道の駅の更新に失敗しました"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @road_station = RoadStation.find(params[:id])
    @road_station.destroy
    redirect_to road_stations_path, notice: "道の駅の削除に成功しました"
  end

    
  private
    
  def road_station_params
    params.require(:road_station).permit(:name, :location, :phone_number, :business_hours, :facility_amenities)
  end
end
