class ClientsController < ApplicationController
	before_action :set_client, only: [:show]
  def index
  	@clients = Client.all
  end

  def new
  	@client = current_user.clients.build
  end

  def create
  	@client = current_user.clients.build(client_params)
  	if @client.save
  		redirect_to clients_path, notice: "Client succesfully created."
  	else
  		render 'new', notice:"something went wrong!"
  	end
  end

  def show 	
  end

  private

 		def client_params
 			params.require(:client).permit(:first_name, :last_name, :email, :website, :address, :postal_code,
 																		 :city, :country, :phone, :user_id, :invoice_id, :company_name)
 		end

 		def set_client
 			@client = Client.find(params[:id])
 		end
end


