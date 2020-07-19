class RaffleSerializer < ApplicationSerializer
  attributes :id,
             :amount,
             :date_finish,
             :name,
             :quantity,
             :created_at
end
