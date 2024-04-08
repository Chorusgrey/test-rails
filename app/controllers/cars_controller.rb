class CarsController < ApplicationController
  before_action :set_car, only: [:show]

  def index
    query = params[:query]
      if query.present?
        sql_query = "brand ILIKE :query OR model ILIKE :query OR color ILIKE :query"
        @cars = Car.where(sql_query, query: "%#{query}%")
      else
        @cars = Car.all
      end
    end

  def show
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :brand, :year, :km, :description, :price_per_day, :color, :photo)
  end
end
