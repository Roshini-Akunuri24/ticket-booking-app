class SuperUsersController < ApplicationController
  before_action :set_super_user, only: %i[ show edit update destroy ]

  # GET /super_users or /super_users.json
  def index
    @super_users = SuperUser.all
  end

  # GET /super_users/1 or /super_users/1.json
  def show
  end

  # GET /super_users/new
  def new
    @super_user = SuperUser.new
  end

  # GET /super_users/1/edit
  def edit
  end

  # POST /super_users or /super_users.json
  def create
    @super_user = SuperUser.new(super_user_params)

    respond_to do |format|
      if @super_user.save
        format.html { redirect_to super_user_url(@super_user), notice: "Super user was successfully created." }
        format.json { render :show, status: :created, location: @super_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @super_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_users/1 or /super_users/1.json
  def update
    respond_to do |format|
      if @super_user.update(super_user_params)
        format.html { redirect_to super_user_url(@super_user), notice: "Super user was successfully updated." }
        format.json { render :show, status: :ok, location: @super_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @super_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_users/1 or /super_users/1.json
  def destroy
    @super_user.destroy

    respond_to do |format|
      format.html { redirect_to super_users_url, notice: "Super user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_user
      @super_user = SuperUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def super_user_params
      params.require(:super_user).permit(:name)
    end
end
