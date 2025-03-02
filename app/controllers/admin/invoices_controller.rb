class Admin::InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[destroy]

  def index
    @invoices = Invoice.all
  end

  def destroy
    @invoice.destroy
    redirect_to admin_invoices_path, notice: 'Запит на "дізнатись ціну" видалено!'
  end

  private
  
  def set_invoice
    @invoice = Invoice.find(params[:id])
  end
end
