# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::InvoicesController, type: :routing do
  describe 'GET /api/v1/invoices' do
    it 'invoices#index' do
      expect(get: 'api/v1/invoices').to route_to('api/v1/invoices#index')
    end
  end
end
