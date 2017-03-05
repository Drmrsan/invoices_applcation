class InvoicesController < ApplicationController
	before_action :set_invoice, only: [:show]
	def index
		@user = current_user.id
		@invoices = Invoice.all
	end

  def new
  	@invoice = current_user.invoices.build
  end

  def create
  	@invoice = current_user.invoices.build(invoice_params)
  	if @invoice.save
      flash[:notice] = "Invoice succesfully created."
  		redirect_to invoices_path
  	else
  		render 'new', notice:"something went wrong!"
  	end
  end

  def show 	
  end

  private

 		def invoice_params
 			params.require(:invoice).permit(:name, :description, :invoice_number, :currency, :date, :invoice_due,
 																		 :tax, :invoice_note, :client_id)
 		end

 		def set_invoice
 			@invoice = Invoice.find(params[:id])
 		end
end