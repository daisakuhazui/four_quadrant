ActiveAdmin.register Task do
  permit_params :user_id, :title, :quadrant
end
