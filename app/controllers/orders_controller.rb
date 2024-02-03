class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to orders_path
  end

  def show
  end

  def edit
  end

  def update
    @order.update(params[:order])
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
