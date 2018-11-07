class ReactivesController < ApplicationController
	before_action :set_reactive, only: [:show, :edit, :update, :destroy]

  # GET /reactives
  # GET /reactives.json
  def index
    @reactives = Reactive.all
  end

  # GET /reactives/1
  # GET /reactives/1.json
  def show
  end

  # GET /reactives/new
  def new
    @reactive = Reactive.new
  end

  # GET /reactives/1/edit
  def edit
  end

  # POST /reactives
  # POST /reactives.json
  def create
    @reactive = Reactive.new(reactive_params)

    respond_to do |format|
      if @reactive.save
        format.html { redirect_to @reactive, notice: 'Reactive was successfully created.' }
        format.json { render :show, status: :created, location: @reactive }
      else
        format.html { render :new }
        format.json { render json: @reactive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reactives/1
  # PATCH/PUT /reactives/1.json
  def update
    respond_to do |format|
      if @reactive.update(reactive_params)
        format.html { redirect_to @reactive, notice: 'Reactive was successfully updated.' }
        format.json { render :show, status: :ok, location: @reactive }
      else
        format.html { render :edit }
        format.json { render json: @reactive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reactives/1
  # DELETE /reactives/1.json
  def destroy
    @reactive.destroy
    respond_to do |format|
      format.html { redirect_to reactives_url, notice: 'Reactive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reactive
      @reactive = Reactive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reactive_params
      params.require(:reactive).permit(:text, :type, :formula, :topic_id)
    end
end