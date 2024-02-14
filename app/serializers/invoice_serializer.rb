# frozen_string_literal: true

# Model Invoice Serializer
class InvoiceSerializer < ActiveModel::Serializer
  attributes :invoice_number, :total,
             :invoice_date, :status
end
