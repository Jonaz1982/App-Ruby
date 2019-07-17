class ClientsController < ApplicationController
  before_action :set_client, only: %i[show edit update delete]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to listing_clients_path
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @client.update(client_params)
      redirect_to listing_clients_path
    else
      render 'new'
    end
  end

  def delete
    @client.destroy
    redirect_to listing_clients_path
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def client_params
    params.require(:client).permit(
      :name, :client_type, :identification_type, :identification_number
    )
  end
end
