class FactorsController < ApplicationController
  def index
    # @user = current_user
    #    @problem = Problem.find(params[:id])
    @factors = current_user.factors
  end

  def show
  end

  def new
    @factor = Factor.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
