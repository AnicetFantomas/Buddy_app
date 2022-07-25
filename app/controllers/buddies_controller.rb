class BuddiesController < ApplicationController
  before_action :set_buddy, only: %i[ show edit update destroy ]

  # GET /buddies or /buddies.json
  def index
    @buddies = Buddy.all
  end

  # GET /buddies/1 or /buddies/1.json
  def show
  end

  # GET /buddies/new
  def new
    @buddy = Buddy.new
  end

  # GET /buddies/1/edit
  def edit
  end

  # POST /buddies or /buddies.json
  def create
    @buddy = Buddy.new(buddy_params)

    respond_to do |format|
      if @buddy.save
        format.html { redirect_to buddy_url(@buddy), notice: "Buddy was successfully created." }
        format.json { render :show, status: :created, location: @buddy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buddies/1 or /buddies/1.json
  def update
    respond_to do |format|
      if @buddy.update(buddy_params)
        format.html { redirect_to buddy_url(@buddy), notice: "Buddy was successfully updated." }
        format.json { render :show, status: :ok, location: @buddy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buddies/1 or /buddies/1.json
  def destroy
    @buddy.destroy

    respond_to do |format|
      format.html { redirect_to buddies_url, notice: "Buddy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buddy
      @buddy = Buddy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buddy_params
      params.require(:buddy).permit(:first_name, :last_name, :phone_num, :github)
    end
end
