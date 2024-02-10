class RobotsController < ApplicationController
  before_action :set_robot, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @robots = Robot.global_search(params[:query])
    else
      @robots = Robot.all
    end
    @markers = @robots.geocoded.map do |robot|
      {
        lat: robot.latitude,
        lng: robot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {robot: robot}),
        marker_html: render_to_string(partial: "marker", locals: {robot: robot})
      }
    end
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params.except(:photo))
    @robot.user = current_user
    if params[:robot][:photo].present?
      @robot.photo.attach(params[:robot][:photo])
    end
    if @robot.save
      redirect_to robot_path(@robot)
    else
      render :new
    end
  end

  def show
    set_robot
  end

  def edit
    set_robot
  end

  def update
    set_robot
    @robot.update(robot_params)
    redirect_to robot_path(@robot)
  end

  def destroy
    set_robot
    @robot.destroy
    redirect_to robots_path, status: :see_other
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :description, :category, :price, :photo)
  end

  def set_robot
    @robot = Robot.find(params[:id])
  end
end
