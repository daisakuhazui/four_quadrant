class UsersController < ApplicationController
  private

  def user_params
    params.require(:user).permit(
      :email,
      :user_name
    )
  end
end
