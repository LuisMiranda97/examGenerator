class StaticsController < ApplicationController
	before_action :set_static, only: [:show, :edit, :update, :destroy]

  # GET /statics
  # GET /statics.json
  def index
    @statics = Static.all
  end

  # GET /statics/1
  # GET /statics/1.json
  def show
  end

  # GET /statics/new
  def new
    @static = Static.new
  end

  # GET /statics/1/edit
  def edit
  end

  # POST /statics
  # POST /statics.json
  def create
    @static = Static.new(static_params)

    respond_to do |format|
      if @static.save
        format.html { redirect_to @static, notice: 'Static was successfully created.' }
        format.json { render :show, status: :created, location: @static }
      else
        format.html { render :new }
        format.json { render json: @static.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statics/1
  # PATCH/PUT /statics/1.json
  def update
    respond_to do |format|
      if @static.update(static_params)
        format.html { redirect_to @static, notice: 'Static was successfully updated.' }
        format.json { render :show, status: :ok, location: @static }
      else
        format.html { render :edit }
        format.json { render json: @static.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statics/1
  # DELETE /statics/1.json
  def destroy
    @static.destroy
    respond_to do |format|
      format.html { redirect_to statics_url, notice: 'Static was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static
      @static = Static.find(params[:id_static])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_params
      params.require(:static).permit(:id_topic, :text, :id_option)
    end
end
