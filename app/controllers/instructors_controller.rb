class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /instructors
  # GET /instructors.json
  def index
    @instructors = @area.instructors.search(params[:search], params[:page])
    #@instructors = Instructor.search(params[:search], params[:page])
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
  end

  # GET /instructors/new
  def new
    @instructor = Instructor.new
  end

  # GET /instructors/1/edit
  def edit
  end

  # POST /instructors
  # POST /instructors.json
  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.area_id = @area.id
    respond_to do |format|
      if @instructor.save
        format.html { redirect_to area_instructors_path(@area), notice: 'Instructor was successfully created.' }
        format.json { render :show, status: :created, location: @instructor }
      else
        format.html { render :new }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructors/1
  # PATCH/PUT /instructors/1.json
  def update
    respond_to do |format|
      if @instructor.update(instructor_params)
        format.html { redirect_to area_instructors_path(@area), notice: 'Instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.html { render :edit }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.json
  def destroy
    @instructor.destroy
    respond_to do |format|
      format.html { redirect_to area_instructors_url(@area), notice: 'Instructor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @area = Area.find(params[:area_id])
      @instructor = Instructor.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_params
      params.require(:instructor).permit(:document_id, :number_documnet, :name, :last_name, :gender, :email, :telephone, :area_id, :userr_id, :online_id)
    end
end
