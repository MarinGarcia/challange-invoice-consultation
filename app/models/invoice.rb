# frozen_string_literal: true

# Model Invoice
class Invoice < ApplicationRecord
  CANCELLED = 'Cancelado'
  VALID = 'Vigente'

  validates_presence_of :invoice_number, :total,
                        :invoice_date, :status

  validates_uniqueness_of :invoice_number
  validates :status, inclusion: [CANCELLED, VALID]
end
