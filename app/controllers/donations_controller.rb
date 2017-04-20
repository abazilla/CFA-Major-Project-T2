class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
    @donation = Donation.new
    @project = Project.find(params[:project_id])
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    @donation.user_id = current_user.id
    @project = Project.find(params[:project_id])
    @donation.project_id = @project.id
    @amount = (@donation.amount) * 100
    @profile = @donation.user.profile

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    respond_to do |format|
      if @donation.save
        # @donation.update_project_funded_amount
        # @project.funded_amount += @donation.amount
        @project.update_attributes(funded_amount: @project.funded_amount + @donation.amount)
        # @project.save
        format.html { redirect_to [@project, @donation], notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: [@project, @donation] }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:user_id, :project_id, :amount)
    end
end
