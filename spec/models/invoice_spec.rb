# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Invoice, type: :model do
  subject do
    described_class.new(
      invoice_number: 'AAA000BBB000CCC',
      total: 10.10,
      invoice_date: DateTime.now,
      status: described_class::VALID
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without invoice_number' do
    subject.invoice_number = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid status' do
    subject.status = 'NOT_VALID'
    expect(subject).to_not be_valid
  end
end
