class Api::TicketsController < Api::BaseController
  def index
    paginate json: Raffle.all, per_page: params[:per_page]
  end
end