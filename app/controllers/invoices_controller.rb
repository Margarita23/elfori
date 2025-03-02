class InvoicesController < ApplicationController
  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      flash[:notice] = "Запит успішно відправлено!"
      # AdminMailer.new_invoice(@invoice).deliver_now
    else
      flash[:notice] = "Запит не відправлено!"
    end

    redirect_to tile_collection_plates_path(invoice_params[:tile_collection_id])
  end

  private

  def invoice_params
    params.require(:invoice).permit(:name, :phone, :tile_collection_id, :plate_id)
  end
end
