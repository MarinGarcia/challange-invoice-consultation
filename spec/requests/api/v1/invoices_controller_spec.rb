# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::InvoicesController, type: :request do
  describe 'GET /api/v1/invoices' do
    it 'return json with list invoices' do
      start_date = (Time.now - 1.day).to_s(:no_timezone)
      end_date = Time.now.to_s(:no_timezone)

      create(:invoice, invoice_date: start_date)
      create(:invoice, invoice_date: end_date)

      get api_v1_invoices_path(
        start_date: start_date,
        end_date: end_date
      ), headers: {
        Authorization: token
      }

      expect(response).to have_http_status(:ok)
      expect(json['data'].count).to be(2)
    end

    context 'when not exist token' do
      it 'return status unauthorized' do
        get api_v1_invoices_path

        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
