class CnabsController < ApplicationController
  before_action :set_cnab, only: [:destroy, :show]

  def index
    @cnabs = Cnab.all
  end

  def new
    @cnab = Cnab.new
  end

  def show
    @purchases = @cnab.purchases
  end

  def create
    @cnab = Cnab.new(cnab_params)

    respond_to do |format|
      if @cnab.save
        CnabJob.perform_later(@cnab.id)
        format.html { redirect_to cnabs_path, notice: 'cnab was successfully created.' }
        format.json { render :show, status: :created, location: @cnab }
      else
        format.html { render :new }
        format.json { render json: @cnab.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_cnab
      @cnab = Cnab.find(params[:id])
    end

    def cnab_params
      params.fetch(:cnab).permit!
    end
end
