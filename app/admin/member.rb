ActiveAdmin.register Member do
  permit_params :name, :home_teachers
  controller do
    def permitted_params
      params.permit!
    end
  end



  form do |f|
    f.inputs "Details" do 
      f.input :name
      f.input :home_teachers, collection: HomeTeacher.all
    end
    f.actions
  end
end
