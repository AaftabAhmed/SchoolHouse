ActiveAdmin.register Teacher do

  permit_params :name, :age, :gender, :introduction, :qualification, grades:[]

end
