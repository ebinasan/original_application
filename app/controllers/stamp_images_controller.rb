class StampImagesController < ApplicationController
  before_action :set_stamp_image, only: [:show, :edit, :update, :destroy]

  def new
    @stamp_image = StampImage.new
  end

  def show
    @road_station = RoadStation.find(params[:road_station_id])
    @stamp_image = @road_station.stamp_images.find(params[:id])
  end

  def create
    @road_station = RoadStation.find(params[:road_station_id])
    @stamp_image = @road_station.stamp_images.build(stamp_image_params)
    @stamp_image.user = current_user # 現在のユーザーを設定

    if @stamp_image.save
      redirect_to road_station_path(@road_station), success: 'スタンプ画像が登録されました。'
    else
      flash.now[:danger] = 'スタンプ画像の登録に失敗しました。画像を選択してください。'
      render 'road_stations/show'
    end
  end

  def edit
    @road_station = RoadStation.find(params[:road_station_id])
    @stamp_image = StampImage.find(params[:id]) 
  end

  def update
    @road_station = RoadStation.find(params[:road_station_id])
    @stamp_image = @road_station.stamp_images.find(params[:id])
    
    if @stamp_image.update(stamp_image_params)
      redirect_to [@road_station, @stamp_image], success: 'スタンプ画像が更新されました。'
    else
      flash.now[:danger] = 'スタンプ画像の更新に失敗しました。'
      render :edit
    end
  end

  def destroy
    @stamp_image = StampImage.find(params[:id])
    @stamp_image.destroy
    redirect_to road_station_path(@stamp_image.road_station), danger: 'スタンプ画像が削除されました。'
  end


  private

  def stamp_image_params
    params.require(:stamp_image).permit(:image, :has_design)
  end

  def set_stamp_image
    @stamp_image = StampImage.find(params[:id])
  end
  
end