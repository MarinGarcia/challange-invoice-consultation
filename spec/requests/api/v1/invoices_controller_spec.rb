# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::InvoicesController, type: :request do
  describe 'GET /api/v1/invoices' do
    it 'return json with list invoices' do
      create_list(:invoice, 3)

      get api_v1_invoices_path, headers: {
        Authorization: token
      }

      expect(response).to have_http_status(:ok)
      expect(json.count).to be(3)
    end

    context 'when not exist token' do
      it 'return status unauthorized' do
        get api_v1_invoices_path

        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
