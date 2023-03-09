class AdminsController < ApplicationController
    before_action :set_admin, only: %i[ show edit update destroy ]
  
    # GET /super_users or /super_users.json
    def index
      @admins = Admin.all
    end
  
    # GET /super_users/1 or /super_users/1.json
    def show
      @admin = Admin.find(params[:id])
    end
  
    # GET /super_users/new
    def new
      @admin = Admin.new
    end
  
    # GET /super_users/1/edit
    def edit
      @admin = Admin.find(params[:id])
    end
  
    # POST /super_users or /super_users.json
    def create
      @admin = Admin.new(admin_params)
  
      respond_to do |format|
        if @admin.save
          format.html { redirect_to admin_url(@admin), notice: "user was successfully created." }
          format.json { render :show, status: :created, location: @admin }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /super_users/1 or /super_users/1.json
    def update
      @admin = Admin.find(params[:id])
      respond_to do |format|
        if @admin.update(admin_params)
          format.html { redirect_to admin_url(@admin), notice: "user was successfully updated." }
          format.json { render :show, status: :ok, location: @admin }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /super_users/1 or /super_users/1.json
    def destroy
      @admin = Admin.find(params[:id])
      @admin.destroy
  
      respond_to do |format|
        format.html { redirect_to admins_url, notice: "Super user was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_admin
        @admin = Admin.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def admin_params
        params.require(:admin).permit(:name, :email, :phone_number, :password)
      end
  end
  
  