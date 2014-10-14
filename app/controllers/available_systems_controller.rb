class AvailableSystemsController < ApplicationController
  before_action :set_available_system, only: [:show, :edit, :update, :destroy]

  # GET /available_systems
  # GET /available_systems.json
  def index
    @available_systems = AvailableSystem.all
  end

  # GET /available_systems/1
  # GET /available_systems/1.json
  def show
  end

  # GET /available_systems/new
  def new
    @available_system = AvailableSystem.new
  end

  # GET /available_systems/1/edit
  def edit
  end

  # POST /available_systems
  # POST /available_systems.json
  def create
    @available_system = AvailableSystem.new(available_system_params)

    respond_to do |format|
      if @available_system.save
        format.html { redirect_to @available_system, notice: 'Available system was successfully created.' }
        format.json { render :show, status: :created, location: @available_system }
      else
        format.html { render :new }
        format.json { render json: @available_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_systems/1
  # PATCH/PUT /available_systems/1.json
  def update
    respond_to do |format|
      if @available_system.update(available_system_params)
        format.html { redirect_to @available_system, notice: 'Available system was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_system }
      else
        format.html { render :edit }
        format.json { render json: @available_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_systems/1
  # DELETE /available_systems/1.json
  def destroy
    @available_system.destroy
    respond_to do |format|
      format.html { redirect_to available_systems_url, notice: 'Available system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_system
      @available_system = AvailableSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_system_params
      params[:available_system]
    end
end
