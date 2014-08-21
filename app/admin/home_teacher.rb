ActiveAdmin.register HomeTeacher do
  permit_params :email, :phone_number, :name


  index do |f|
    selectable_column
    id_column
    f.column :name
    f.column :email
    f.column :phone_number
    f.actions
  end


  show do |f|
    attributes_table do 
      rows :name, :email, :phone_number
    end
  end

  form do |f|
    f.inputs :name, :email, :phone_number
    f.actions
  end

end
