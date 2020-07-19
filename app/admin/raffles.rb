ActiveAdmin.register Raffle do
  permit_params :name, :amount, :quantity

  index do
    selectable_column
    id_column
    column :name
    column :amount do |f|
      number_to_currency(f.amount, unit: "S/.", format: "%u %n")
    end

    column :quantity
    column I18n.t('active_admin.ticket.sold') do |f|
      f.tickets.where(sold: true).size
    end
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
      f.input :amount
      f.input :quantity
    end
    f.actions
  end

end
