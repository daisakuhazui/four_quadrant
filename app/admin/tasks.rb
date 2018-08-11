ActiveAdmin.register Task do
  permit_params :user_id, :title, :quadrant

  form do |f|
    f.inputs do
      f.input :user
      f.input :title
      f.input :quadrant
    end
    f.actions
  end
end
