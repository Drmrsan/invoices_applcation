class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  	@user = current_user.id
  	@invoices = Invoice.all
  	@clients = Client.all
  end
end
