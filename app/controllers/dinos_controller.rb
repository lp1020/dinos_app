class DinosController < ApplicationController
  before_action :set_dino, only: [:show, :edit, :update, :destroy]
  def index
   @dinos = Dino.all
  end
  def show
  end

  # THIS IS THE SHORTER WAY
  # def create
  #   @dino = Dino.new(dino_params)
  #   if @dino.save
  #     redirect @dino
  #   else
  #     redirect_to new_dino_path
  #   end
  # end

  # THIS IS THE LONGER BUT SAFER WAY
  def create
  @dino = Dino.new(dino_params)

  respond_to do |format|
    if @dino.save
      format.html { redirect_to @dino, notice: 'Post was successfully created.' }
      format.json { render :show, status: :created, location: @dino }
    else
      format.html { render :new }
      format.json{ render json: @dino.errors, status: :unprocessable_entity }
    end
  end
end
   def destroy
    @dino.destroy
    respond_to do |format|
      format.html { redirect_to dinos_url, notice: 'Dino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def edit
  end
  def new
    @dino = Dino.new
  end
  def update
    respond_to do |format|
      if @dino.update(dino_params)
        format.html { redirect_to @dino, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # get the :id params from the url to be passed to each action
    def set_dino
      @dino = Dino.find(params[:id])
    end
 # params object is being generated on every form to be passed to the corresponding action
  # Never trust parameters from the scary internet, only allow the white list through.
  def dino_params
    params.require(:dino).permit(:name, :color, :breed)
end
end
