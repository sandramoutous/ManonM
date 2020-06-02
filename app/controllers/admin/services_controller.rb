module Admin
  class ServicesController < AdminController
    before_action :set_service, only: %i[edit]

    def index
      @services = Service.all
    end

    def new
      @service = Service.new
    end

    def create
      @service = Service.new(service_params)
      @service.user = current_user
      if @service.save
        redirect_to admin_services_path
      else
        redirect_to new_admin_service_path
      end
    end

    def edit; end

    private

    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:title, :description, :image, :user_id, :category_id)
    end
  end
end
