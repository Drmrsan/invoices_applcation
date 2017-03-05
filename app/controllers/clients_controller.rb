class ClientsController < ApplicationController
	before_action :set_client, only: [:show, :edit, :update, :delete]
  def index
  	@clients = Client.all
  end

  def new
  	@client = current_user.clients.build
  end

  def create
  	@client = current_user.clients.build(client_params)
  	if @client.save
      flash[:notice] = "Client succesfully created."
  		redirect_to clients_path
  	else
  		render 'new', notice:"something went wrong!"
  	end
  end

  def show 	
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to client_path(@client), notice: "Client details succesfully updated."
    else
      render 'edit', notice: "Something went wrong, please try again later."
    end
  end

  def delete
    @client.destroy
    redirect_to clients_path, notice: "Client succesfully deleted."
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


