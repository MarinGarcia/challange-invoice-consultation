class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices, if_not_exists: true do |t|
      t.string :invoice_number
      t.decimal :total
      t.datetime :invoice_date
      t.string :status

      t.timestamps
    end
  end
end
