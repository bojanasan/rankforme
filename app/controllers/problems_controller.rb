class ProblemsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @problems = @user.problems
  end

  def show
    @problem = Problem.find(params[:id])
    # @user = User.find(@problem.user_id)
  end

  def new
    @problem = Problem.new
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def create
    @problem = Problem.new(params[:problem])
    @problem.user = current_user
    if @problem.save
      redirect_to @problem, notice: 'Problem was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @problem = Problem.find
    if @problem.update_attributes(params[:problem])
      redirect_to @problem, notice: 'Problem was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @problem = Problem.find(params[:id])
    @problem.destroy
    redirect_to problems_url
  end
end
