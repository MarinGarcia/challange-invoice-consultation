# frozen_string_literal: true

FactoryBot.define do
  factory :invoice do
    invoice_number { Faker::Invoice.creditor_reference }
    total { Faker::Number.decimal(l_digits: 2) }
    invoice_date { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    status { [Invoice::CANCELLED, Invoice::VALID].sample }
  end
end
