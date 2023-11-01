class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:name)
  end

  def missing_email
    @customers = Customer.where(email: [nil, ''])
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
