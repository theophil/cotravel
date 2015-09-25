class TransportationUsersController < ApplicationController
  before_action :set_transportation_user, only: [:show, :edit, :update, :destroy]

  # GET /transportation_users
  # GET /transportation_users.json
  def index
    @transportation_users = TransportationUser.all
  end

  # GET /transportation_users/1
  # GET /transportation_users/1.json
  def show
  end

  # GET /transportation_users/new
  def new
    @transportation_user = TransportationUser.new
  end

  # GET /transportation_users/1/edit
  def edit
  end

  # POST /transportation_users
  # POST /transportation_users.json
  def create
    @transportation_user = TransportationUser.new(transportation_user_params)

    respond_to do |format|
      if @transportation_user.save
        format.html { redirect_to @transportation_user, notice: 'Transportation user was successfully created.' }
        format.json { render :show, status: :created, location: @transportation_user }
      else
        format.html { render :new }
        format.json { render json: @transportation_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportation_users/1
  # PATCH/PUT /transportation_users/1.json
  def update
    respond_to do |format|
      if @transportation_user.update(transportation_user_params)
        format.html { redirect_to @transportation_user, notice: 'Transportation user was successfully updated.' }
        format.json { render :show, status: :ok, location: @transportation_user }
      else
        format.html { render :edit }
        format.json { render json: @transportation_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportation_users/1
  # DELETE /transportation_users/1.json
  def destroy
    @transportation_user.destroy
    respond_to do |format|
      format.html { redirect_to transportation_users_url, notice: 'Transportation user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation_user
      @transportation_user = TransportationUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transportation_user_params
      params.require(:transportation_user).permit(:user_id, :transporation_id, :like, :dislike)
    end
end
