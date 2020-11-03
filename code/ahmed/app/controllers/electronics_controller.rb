class ElectronicsController < ApplicationController
  before_action :set_electronic, only: [:show, :edit, :update, :destroy]

  # GET /electronics
  # GET /electronics.json
  def index
    @electronics = Electronic.all
  end

  # GET /electronics/1
  # GET /electronics/1.json
  def show
  end

  # GET /electronics/new
  def new
    @electronic = Electronic.new
  end

  # GET /electronics/1/edit
  def edit
  end

  # POST /electronics
  # POST /electronics.json
  def create
    @electronic = Electronic.new(electronic_params)

    respond_to do |format|
      if @electronic.save
        format.html { redirect_to @electronic, notice: 'Electronic was successfully created.' }
        format.json { render :show, status: :created, location: @electronic }
      else
        format.html { render :new }
        format.json { render json: @electronic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electronics/1
  # PATCH/PUT /electronics/1.json
  def update
    respond_to do |format|
      if @electronic.update(electronic_params)
        format.html { redirect_to @electronic, notice: 'Electronic was successfully updated.' }
        format.json { render :show, status: :ok, location: @electronic }
      else
        format.html { render :edit }
        format.json { render json: @electronic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electronics/1
  # DELETE /electronics/1.json
  def destroy
    @electronic.destroy
    respond_to do |format|
      format.html { redirect_to electronics_url, notice: 'Electronic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electronic
      @electronic = Electronic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def electronic_params
      params.fetch(:electronic, {})
    end
end
