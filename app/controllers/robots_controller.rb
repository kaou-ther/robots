class RobotsController < ApplicationController
  before_action :set_robot, only: [:show, :edit, :update, :destroy]

  def index
    @robots = Robot.all
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)
    @robot.save
    redirect_to robots_path(@robot)
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
    params.require(:robot).permit(:name, :description, :category, :price)
  end

  def set_robot
    @robot = Robot.find(params[:id])
  end
end
