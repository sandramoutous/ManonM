module Admin
  class UsersController < AdminController
    before_action :set_user

    def show; end

    def edit
      @user = User.find(params[:id])
    end

    def update
      if @user.update(user_params)
        redirect_to admin_user_path, notice: t('users.updated')
      else
        redirect_to edit_admin_user_path, alert: t('users.not_updated')
      end
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :description, :image)
    end
  end
end
