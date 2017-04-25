class PaidForwardsController < ApplicationController
  before_action :set_paid_forward, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
  end

  def show
    @projects = Project.all
  end

  def fund_next_project
    # @project = Project.find(params[:project_id])
    # Donation.new(:user_id => current_user.id, :project_id => @project.id, :amount => amount)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paid_forward
      @paid_forward = PaidForward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paid_forwards_params
      params.require(:paid_forward).permit(:project_id, :amount)
    end
end
