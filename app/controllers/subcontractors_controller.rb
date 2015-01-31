class SubcontractorsController < ApplicationController
  before_action :set_subcontractor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @subcontractors = Subcontractor.all
    respond_with(@subcontractors)
  end

  def show
    respond_with(@subcontractor)
  end

  def new
    @subcontractor = Subcontractor.new
    respond_with(@subcontractor)
  end

  def edit
  end

  def create
    @subcontractor = Subcontractor.new(subcontractor_params)
    @subcontractor.save
    respond_with(@subcontractor)
  end

  def update
    @subcontractor.update(subcontractor_params)
    respond_with(@subcontractor)
  end

  def destroy
    @subcontractor.destroy
    respond_with(@subcontractor)
  end

  private
    def set_subcontractor
      @subcontractor = Subcontractor.find(params[:id])
    end

    def subcontractor_params
      params.require(:subcontractor).permit(:bp, :company, :contact, :address, :phone, :trade, :contract_value, :logo, :notes)
    end
end
