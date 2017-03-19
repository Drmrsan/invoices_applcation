class InvoicesController < ApplicationController
	before_action :set_invoice, only: [:show]
  before_action :invoice_due_list, only: [:new, :create]
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
 																		 :tax, :invoice_note, :client_id, :subtotal, :total, 
                                     items_attributes: [:id, :name, :qty, :rate, :amount, :done, :_destroy])
 		end

 		def set_invoice
 			@invoice = Invoice.find(params[:id])
 		end

    def invoice_due_list
      @invoice_due_list = ["Due on Receipt", "After 7 days", "After 15 days",
                    "After 30 days", "After 45 days", "After 60 days"]
    end
end