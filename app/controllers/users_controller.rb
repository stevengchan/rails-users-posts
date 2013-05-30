class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    user_params = params.permit(:first_name, :last_name, :email_address, :password)
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User created successfully.'
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

  end

  def destroy
    @user = User.find(params[:id])
  end

end
