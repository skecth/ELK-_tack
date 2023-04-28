class SearchController < ApplicationController

  def search
    @result = PurchaseOrder.search(params[:search])

    render turbo_stream:
     turbo_stream.update('purchase_orders', 
                            partial: 'purchase_orders/po',
                            locals: {purchase_orders: @result})
  end

end
