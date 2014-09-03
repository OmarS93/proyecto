class UserrsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /userrs
  # GET /userrs.json
  def index
    @userrs = Userr.all
  end

  # GET /userrs/1
  # GET /userrs/1.json
  def show
  end

  # GET /userrs/new
  def new
    @userr = Userr.new
  end

  # GET /userrs/1/edit
  def edit
  end

  # POST /userrs
  # POST /userrs.json
  def create
    @userr = Userr.new(userr_params)

    respond_to do |format|
      if @userr.save
        format.html { redirect_to @userr, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @userr }
      else
        format.html { render :new }
        format.json { render json: @userr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userrs/1
  # PATCH/PUT /userrs/1.json
  def update
    respond_to do |format|
      if @userr.update(userr_params)
        format.html { redirect_to @userr, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @userr }
      else
        format.html { render :edit }
        format.json { render json: @userr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userrs/1
  # DELETE /userrs/1.json
  def destroy
    @userr.destroy
    respond_to do |format|
      format.html { redirect_to userrs_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userr
      @userr = Userr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userr_params
      params.require(:userr).permit(:name, :description)
    end
end
