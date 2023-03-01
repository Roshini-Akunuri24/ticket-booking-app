class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
  
    # GET /super_users or /super_users.json
    def index
      @users = User.all
    end
  
    # GET /super_users/1 or /super_users/1.json
    def show
      @user = User.find(params[:id])
    end
  
    # GET /super_users/new
    def new
      @user = User.new
    end
  
    # GET /super_users/1/edit
    def edit
      @user = User.find(params[:id])
    end
  
    # POST /super_users or /super_users.json
    def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to user_url(@user), notice: "user was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /super_users/1 or /super_users/1.json
    def update
      @user = User.find(params[:id])
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to user_url(@user), notice: "user was successfully updated." }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /super_users/1 or /super_users/1.json
    def destroy
      @user = User.find(params[:id])
      @user.destroy
  
      respond_to do |format|
        format.html { redirect_to users_url, notice: "Super user was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
      end
  end
 