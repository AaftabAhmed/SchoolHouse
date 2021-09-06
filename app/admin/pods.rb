ActiveAdmin.register Pod do

  permit_params :name, :description, :start_time, :end_time, :teacher_id

end
