class UsersController < ApplicationController
  # GET /users
  def index
  	@users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    user_params = params.permit(:first_name, :last_name, :email_address, :password)
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User created successfully.'
    else
      render 'new'
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])
    user_params = params.permit(:first_name, :last_name, :email_address, :password)
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
  end

end
