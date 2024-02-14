# frozen_string_literal: true

# Controller to handle resources invoices
class Api::V1::InvoicesController < Api::V1::BaseController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActiveRecord::RecordInvalid, with: :invalid

  def index
    invoice = Invoice.first

    render json: invoice
  end

  private

  def invalid
    render json: { message: 'invalid data' }, status: :unprocessable_entity
  end

  def not_found
    render json: { message: 'data not found' }, status: :not_found
  end
end
