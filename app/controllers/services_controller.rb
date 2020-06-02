class ServicesController < ApplicationController
  before_action :set_service, only: %i[edit update]

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
      redirect_to new_admin_service_path, notice: 'Veuillez remplir tous les champs obligatoires'
    end
  end

  def edit; end

  def update
    if @service.update(service_params)
      redirect_to admin_services_path, notice: t('services.updated')
    else
      redirect_to new_admin_service_path, alert: t('services.not_updated')
    end
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :description, :image, :user_id, :category_id)
  end
end
