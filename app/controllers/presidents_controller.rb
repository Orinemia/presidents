class PresidentsController < ApplicationController
  before_action :set_president, only: [:show, :edit, :update, :destroy]

  # GET /presidents
  # GET /presidents.json
  def index
    @presidents = President.all
  end

  # GET /presidents/1
  # GET /presidents/1.json
  def show
  end

  # GET /presidents/new
  def new
    @president = President.new
  end

  # GET /presidents/1/edit
  def edit
  end

  # POST /presidents
  # POST /presidents.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_president
      @president = President.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def president_params
      params.require(:president).permit(:presidency, :president, :took_office, :left_office, :party, :picture, :state, :term, :biography)
    end
end
