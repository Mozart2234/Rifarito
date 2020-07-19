class Api::TicketsController < Api::BaseController
  before_action :find_raffle

  def index
    paginate json: @raffle.tickets, per_page: params[:per_page]
  end

  private

  def find_raffle
    @raffle = Raffle.find(params[:raffle_id])
  end
end