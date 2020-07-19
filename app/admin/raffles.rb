ActiveAdmin.register Raffle do
  permit_params :name, :amount, :quantity

  index do
    selectable_column
    id_column
    column :name
    column :amount
    column :quantity
    actions
  end

  filter :name
  filter :amount
  filter :quantity
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :amount
      f.input :quantity
    end
    f.actions
  end
end
