class Api::BuyerController < Api::BaseController
  def index
    paginate json: Raffle.all, per_page: params[:per_page]
  end
  def create
    buyer = Buyer.new(set_params)
    if buyer.save
      render json: buyer, :ok
    else
      render json: {
        message: 'An error ocurred'
      }, :unprocessable_entity
    end
  end

  private
  def set_params
    params.require(:buyer).permit(:name, :type_of_payment, :phone_number, :quantity)
  end
end