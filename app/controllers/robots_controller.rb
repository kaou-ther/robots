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
  end

  def show
  end

  def edit
  end

  def update
    @robot.update(params[:robot])
  end

  def destroy
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
