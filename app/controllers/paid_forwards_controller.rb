class PaidForwardsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paid_forward
      @paid_forward = PaidForward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:paid_forward).permit(:project_id, :amount)
    end
end
