class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @users = User.create(user_params)

    respond_to do |format|
      if @users.save
        format.html { redirect_to user_url(@users), notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @users }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end
end
