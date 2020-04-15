class GraduatesController < ApplicationController
  before_action :set_graduate, only: [:show, :edit, :update, :destroy]

  # GET /graduates
  # GET /graduates.json
  def index
    @graduates = Graduate.all
  end

  # GET /graduates/1
  # GET /graduates/1.json
  def show
  end

  # GET /graduates/new
  def new
    @graduate = Graduate.new
  end

  # GET /graduates/1/edit
  def edit
  end

  # POST /graduates
  # POST /graduates.json
  def create
    @graduate = Graduate.new(graduate_params)

    respond_to do |format|
      if @graduate.save
        format.html { redirect_to @graduate, notice: 'Graduate was successfully created.' }
        format.json { render :show, status: :created, location: @graduate }
      else
        format.html { render :new }
        format.json { render json: @graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduates/1
  # PATCH/PUT /graduates/1.json
  def update
    respond_to do |format|
      if @graduate.update(graduate_params)
        format.html { redirect_to @graduate, notice: 'Graduate was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduate }
      else
        format.html { render :edit }
        format.json { render json: @graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduates/1
  # DELETE /graduates/1.json
  def destroy
    @graduate.destroy
    respond_to do |format|
      format.html { redirect_to graduates_url, notice: 'Graduate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graduate
      @graduate = Graduate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def graduate_params
      params.require(:graduate).permit(:name)
    end
end
