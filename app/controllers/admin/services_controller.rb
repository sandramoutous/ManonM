module Admin
  class ServicesController < AdminController
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

      private

      def service_params
        params.require(:service).permit(:title, :description, :image, :user_id, :category_id)
      end
  end
end
