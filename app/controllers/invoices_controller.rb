class InvoicesController < ApplicationController
  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      AdminMailer.new_invoice(@invoice).deliver_now
      redirect_to root_path, notice: 'Запит успішно відправлено!'
    else
      render :new
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:name, :phone, :tile_collection_id, :plate_id)
  end
end
