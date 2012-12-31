# This migration comes from invoice_bar (originally 20121012142454)
class CreateInvoiceBarCurrencies < ActiveRecord::Migration
  def change
    create_table :invoice_bar_currencies do |t|
      t.string :name, :null => false, :unique => true
      t.string :symbol, :null => false, :unique => true
      t.integer :priority, :null => false, :default => 1
    end
  end
end
