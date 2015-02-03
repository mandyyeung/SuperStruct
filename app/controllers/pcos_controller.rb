class PcosController < ApplicationController
  before_action :set_pco, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pcos = Pco.all
    respond_with(@pcos)
  end

  def show
    respond_with(@pco)
  end

  def new
    @pco = Pco.new
    respond_with(@pco)
  end

  def edit
  end

  def create
    @pco = Pco.new(pco_params)
    @pco.save
    @pco.subcontractor = Subcontractor.find(params[:subcontractor_id])
    @pco.status = Status.find(params[:status_id])
    respond_with(@pco)
  end

  def update
    @pco.update(pco_params)
    respond_with(@pco)
  end

  def destroy
    @pco.destroy
    respond_with(@pco)
  end

  private
    def set_pco
      @pco = Pco.find(params[:id])
    end

    def pco_params
      params.require(:pco).permit(:num, :pco_type, :description, :discovery, :sub_proposal_num, :al_num, :ddc_co_num, :sub_co_num, :proposal_received, :df_submitted, :df_returned, :sent_to_gt, :cleared_gt, :sent_to_ddc, :ddc_approved, :eao, :approved, :approximate, :proposed, :tstv_estimate, :gt_estimate, :submitted, :ddc_approved, :bc_to, :deduct, :bc_from, :add, :used_allowance, :tdrive, :billed, :billed_month, :subcontractor_id, :status_id)
    end
end
