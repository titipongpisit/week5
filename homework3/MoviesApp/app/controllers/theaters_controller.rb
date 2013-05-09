class TheatersController < ApplicationController

  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find_by_id(params[:id])
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new
    @theater.name = params[:name]
    @theater.address = params[:address]

    if @theater.save                           #why if statement ?
      redirect_to "/theaters"
    else
      render 'new'
    end
  end

  def edit
    @theater = Theater.find_by_id(params[:id]) #id ? from where ?
  end

  def update
    @theater = Theater.find_by_id(params[:id])
    @theater.name = params[:name]  #store name in database
    @theater.address = params[:address] #store address in database

    if @theater.save
      redirect_to "/theaters"
    else
      render 'edit'
    end
  end

  def destroy
    @theater = Theater.find_by_id(params[:id])
    @theater.destroy
    redirect_to "/theaters"
  end
end
