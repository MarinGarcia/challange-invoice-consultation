# frozen_string_literal: true

# Controller to handle resources invoices
class Api::V1::InvoicesController < Api::V1::BaseController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActiveRecord::RecordInvalid, with: :invalid

  def index
    invoices = Invoice.range_invoice_date(params_invoice[:start_date], params_invoice[:end_date])

    render json: { records: invoices.count, data: invoices }
  end

  private

  def params_invoice
    params.permit(:start_date, :end_date)
  end

  def invalid
    render json: { message: 'invalid data' }, status: :unprocessable_entity
  end

  def not_found
    render json: { message: 'data not found' }, status: :not_found
  end
end
