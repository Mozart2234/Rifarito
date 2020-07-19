ActiveAdmin.register Buyer do
  permit_params :code,
                :code_operation,
                :date_of_payment,
                :date_of_verified,
                :name,
                :phone_number,
                :status,
                :total,
                :type_of_payment,
                :voucher,
                :raffle_id,
                ticket_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :total
    column :code
    column :code_operation
    column :phone_number
    column :status
    column :type_of_payment
    column :voucher

    column :date_of_payment
    column :date_of_verified
    column :created_at
    actions
  end

  filter :name
  filter :amount
  filter :quantity
  filter :created_at

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do

      f.input :name
      f.input :phone_number

      f.input :quantity
      f.input :code_operation
      f.input :date_of_payment, as: :date_time_picker
      f.input :date_of_verified, as: :date_time_picker

      f.input :status, collection: Buyer.statuses.map {|value, key| [I18n.t("activerecord.attributes.buyer/status.#{value}"), value] }
      f.input :type_of_payment
      f.input :voucher

      f.input :raffle
      f.input :tickets, as: :select, collection: Ticket.pluck(:num, :id)
    end
    f.actions
  end
end
