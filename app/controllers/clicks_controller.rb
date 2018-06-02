class ClicksController < ApplicationController
  before_action :set_click, only: [:show, :edit, :update, :destroy]

  # GET /clicks
  # GET /clicks.json
  def index
    @total = Click.where("created_at > ?", DateTime.now - 1.week).count
    @recent = Click.order(created_at: :desc).limit(5)
  end

  # POST /clicks
  # POST /clicks.json
  def create
    @click = Click.new(click_params)

    respond_to do |format|
      if @click.save
        format.html { redirect_to @click, notice: 'Click was successfully created.' }
        format.json { render :show, status: :created, location: @click }
      else
        format.html { render :new }
        format.json { render json: @click.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_click
      @click = Click.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def click_params
      params.require(:click).permit(:city, :state, :country, :user_agent)
    end
end
