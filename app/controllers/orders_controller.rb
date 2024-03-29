class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @orders = @user.orders
  end

  def new
    @robot = Robot.find(params[:robot_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @robot = Robot.find(params[:robot_id])
    @order.robot = @robot
    @order.user = current_user
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @order.update(order_params)
    redirect_to order_path(@order)
  end

  def destroy
    @order.destroy
    redirect_to orders_path, status: :see_other
  end

  private

  def order_params
    params.require(:order).permit(:start_date, :end_date)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
