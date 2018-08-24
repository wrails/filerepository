class FilesharesController < ApplicationController
  before_action :set_fileshare, only: [:show, :edit, :update, :destroy]

  # GET /fileshares
  # GET /fileshares.json
  def index
    @fileshares = Fileshare.all
  end

  # GET /fileshares/1
  # GET /fileshares/1.json
  def show
  end

  # GET /fileshares/new
  def new
    @fileshare = Fileshare.new
  end

  # GET /fileshares/1/edit
  def edit
  end

  # POST /fileshares
  # POST /fileshares.json
  def create
    @fileshare = Fileshare.new(fileshare_params)

    respond_to do |format|
      if @fileshare.save
        format.html { redirect_to @fileshare, notice: 'Fileshare was successfully created.' }
        format.json { render :show, status: :created, location: @fileshare }
      else
        format.html { render :new }
        format.json { render json: @fileshare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fileshares/1
  # PATCH/PUT /fileshares/1.json
  def update
    respond_to do |format|
      if @fileshare.update(fileshare_params)
        format.html { redirect_to @fileshare, notice: 'Fileshare was successfully updated.' }
        format.json { render :show, status: :ok, location: @fileshare }
      else
        format.html { render :edit }
        format.json { render json: @fileshare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fileshares/1
  # DELETE /fileshares/1.json
  def destroy
    @fileshare.destroy
    respond_to do |format|
      format.html { redirect_to fileshares_url, notice: 'Fileshare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fileshare
      @fileshare = Fileshare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fileshare_params
      params.require(:fileshare).permit(:category, :title, :keyword, :description, :file, :image, :all_categories, :all_keywords)
    end
end
