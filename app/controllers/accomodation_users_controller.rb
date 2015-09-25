class AccomodationUsersController < ApplicationController
  before_action :set_accomodation_user, only: [:show, :edit, :update, :destroy]

  # GET /accomodation_users
  # GET /accomodation_users.json
  def index
    @accomodation_users = AccomodationUser.all
  end

  # GET /accomodation_users/1
  # GET /accomodation_users/1.json
  def show
  end

  # GET /accomodation_users/new
  def new
    @accomodation_user = AccomodationUser.new
  end

  # GET /accomodation_users/1/edit
  def edit
  end

  # POST /accomodation_users
  # POST /accomodation_users.json
  def create
    @accomodation_user = AccomodationUser.new(accomodation_user_params)

    respond_to do |format|
      if @accomodation_user.save
        format.html { redirect_to @accomodation_user, notice: 'Accomodation user was successfully created.' }
        format.json { render :show, status: :created, location: @accomodation_user }
      else
        format.html { render :new }
        format.json { render json: @accomodation_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accomodation_users/1
  # PATCH/PUT /accomodation_users/1.json
  def update
    respond_to do |format|
      if @accomodation_user.update(accomodation_user_params)
        format.html { redirect_to @accomodation_user, notice: 'Accomodation user was successfully updated.' }
        format.json { render :show, status: :ok, location: @accomodation_user }
      else
        format.html { render :edit }
        format.json { render json: @accomodation_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accomodation_users/1
  # DELETE /accomodation_users/1.json
  def destroy
    @accomodation_user.destroy
    respond_to do |format|
      format.html { redirect_to accomodation_users_url, notice: 'Accomodation user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accomodation_user
      @accomodation_user = AccomodationUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accomodation_user_params
      params.require(:accomodation_user).permit(:user_id, :accomodation_id, :like, :dislike)
    end
end
