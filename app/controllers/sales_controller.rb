class SalesController < ApplicationController
  before_action :set_sale, only: :show

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def show
  end

  def create
    @sale = Sale.new(sale_params)

    if @sale.save
      redirect_to @sale, notice: 'Sale action was successfully created.'
    else
      render :new
    end
  end

  private
    def set_sale
      @sale = Sale.find(params[:id])
    end

    def sale_params
      params.require(:sale).permit(:site)
    end
end
