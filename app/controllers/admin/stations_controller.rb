class Admin::StationsController < Admin::BaseController
  before_action :set_station, only: [:show, :edit, :update, :destroy, :update_position]

  def index
    @stations = Station.all
  end

  def show
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)

    if @station.save
      redirect_to [:admin, @station], notice: "Station was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @station.update(station_params)
      redirect_to admin_stations_path, notice: "Station was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @station.destroy
    redirect_to admin_stations_path
  end

  def update_position
    @route = Route.find(params[:route_id])
    @station.update_position(@route, params[:position])
    redirect_to admin_route_path(@route)
  end

  private

  def set_station
    @station = Station.find(params[:id])
  end

  def station_params
    params.require(:station).permit(:title)
  end
end