class TicketSerializer < ApplicationSerializer
  attributes :id,
             :num,
             :sold,
             :created_at
end
